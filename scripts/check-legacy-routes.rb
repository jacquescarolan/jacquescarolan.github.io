#!/usr/bin/env ruby

require "json"

build_dir = File.expand_path(ARGV.fetch(0, "build"))
manifest_path = File.expand_path(ARGV.fetch(1, "data/legacy-routes.json"))
manifest = JSON.parse(File.read(manifest_path))

def output_path(build_dir, route)
  clean_route = route.sub(%r{\A/}, "")
  if route.end_with?("/")
    File.join(build_dir, clean_route, "index.html")
  else
    File.join(build_dir, clean_route)
  end
end

missing = []
checked = 0

manifest.fetch("routes").each do |group, routes|
  next if group == "homepage_fragments"

  routes.each do |route|
    checked += 1
    missing << route unless File.file?(output_path(build_dir, route))
  end
end

index_html = File.read(File.join(build_dir, "index.html"))
manifest.fetch("routes").fetch("homepage_fragments").each do |route|
  fragment = route.split("#", 2).last
  checked += 1
  escaped_fragment = Regexp.escape(fragment)
  fragment_pattern = /\bid=(?:"#{escaped_fragment}"|'#{escaped_fragment}'|#{escaped_fragment})(?=[\s>])/
  missing << route unless index_html.match?(fragment_pattern)
end

site_files = manifest.fetch("downloads").fetch("site_files").reject do |file|
  file["migration_disposition"] == "remove_when_legacy_public_workflow_is_retired"
end

download_routes = site_files.map { |file| file.fetch("path") }
download_routes.concat(manifest.fetch("downloads").fetch("publication_pdfs"))
download_routes.concat(manifest.fetch("downloads").fetch("bibliography_files"))

download_routes.each do |route|
  checked += 1
  missing << route unless File.file?(output_path(build_dir, route))
end

unless missing.empty?
  warn "Legacy validation failed. Missing #{missing.length} required path(s):"
  missing.each { |route| warn "  - #{route}" }
  exit 1
end

puts "Legacy validation passed: #{checked} required routes, fragments, and downloads found in #{build_dir}."
