# frozen_string_literal: true

class Hash
  # Returns a new struct with the same key/value pairs
  #
  #   user = { first_name: "Dorian", last_name: "Marié" }.to_struct
  #   user.first_name # => "Dorian"
  #   user.birthdate # => NoMethodError: undefined method `birthdate' for <struct...>
  #
  def to_struct
    Struct.new(*keys.map(&:to_sym)).new(*values)
  end

  # Returns a new struct with the same key/value pairs
  #
  #   user = { name: "Dorian", events: [{ name: "Party" }] }.to_deep_struct
  #   user.events.first.name # => "Party"
  #
  def to_deep_struct
    Struct.new(*keys.map(&:to_sym)).new(
      *values.map do |value|
        value.respond_to?(:to_deep_struct) ? value.to_deep_struct : value
      end
    )
  end
end
