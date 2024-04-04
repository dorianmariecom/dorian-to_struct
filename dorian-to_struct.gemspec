# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-to_struct"
  s.version = "0.3.3"
  s.summary = "Adds `#to_struct` and `#to_deep_struct` to Hash and Array"
  s.description =
    "#{s.summary}\n\ne.g. user.first_name, user.events.first.name, etc."
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.com"
  s.files = ["lib/dorian-to_struct.rb"]
  s.homepage = "https://github.com/dorianmariecom/dorian-to_struct"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }

  s.required_ruby_version = ">= 3.3.0"
end
