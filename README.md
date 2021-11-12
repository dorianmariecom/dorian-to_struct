# `dorian-to_struct`

Adds `#to_struct` and `#to_deep_struct` to Hash and Array

### Install

```bash
gem install dorian-to_struct
```

Then: `require "dorian/to_struct"`

Or in your `Gemfile`:

```
gem "dorian-to_struct"
```

### Usage

```
user = {
  first_name: "Dorian",
  last_name: "Marié"
}.to_struct

user.first_name # => "Dorian"
user.last_name # => "Marié"
user.birtdate # NoMethodError

event = {
  name: "Party",
  organizer: {
    first_name: "Dorian"
  }
}.to_deep_struct

event.organizer.first_name # => "Dorian"
```
