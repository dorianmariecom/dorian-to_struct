Gem::Specification.new do |s|
  s.name = "dorian-to_struct"
  s.version = "0.1.0"
  s.summary = "Adds `#to_struct` and `#to_deep_struct` to Hash and Array"
  s.description =
    s.summary + "\n\n" + "e.g. user.first_name, user.events.first.name, etc."
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.fr"
  s.files = %w[
    lib/dorian/to_struct.rb
    lib/dorian/core_ext/hash/struct.rb
    lib/dorian/core_ext/array/struct.rb
  ]
  s.homepage = "https://github.com/dorianmariefr/to_struct"
  s.license = "MIT"
end
