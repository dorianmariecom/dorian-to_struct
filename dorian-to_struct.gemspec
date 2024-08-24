# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-to_struct"
  s.version = File.read("VERSION").strip
  s.summary = "makes structs"
  s.description = s.summary
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.com"
  s.files = %w[lib/dorian-to_struct.rb lib/dorian/to_struct.rb bin/to_struct]
  s.executables << "to_struct"
  s.homepage = "https://github.com/dorianmariecom/dorian-to_struct"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
end
