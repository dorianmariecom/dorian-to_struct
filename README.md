# `dorian-to_struct`

Adds `#to_struct` and `#to_deep_struct` to Hash and Array

### Install

```bash
gem install dorian-each
```

Or as part of my other gems:

```bash
gem install dorian
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
