# `dorian-to_struct`

Convert Ruby hashes and arrays into struct-like objects.

## Install

```bash
gem install dorian-to_struct
```

Also included in the aggregate gem:

```bash
gem install dorian
```

## Usage

```bash
to_struct -h
```

Run `to_struct -h` for generated option details and `to_struct -v` for the installed version.

## Notes

- The executable only exposes help/version. The useful API is loaded with `require "dorian/to_struct"`.

## Examples

### Access hash keys as methods

```ruby
require "dorian/to_struct"

user = { "name" => "Dorian" }.to_struct
user.name # => "Dorian"
user.from_struct # => { "name" => "Dorian" }
```
