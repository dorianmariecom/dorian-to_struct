# frozen_string_literal: true

class Array
  # Returns a new struct with the same key/value pairs
  #
  #   users = [{ first_name: "Dorian", last_name: "Marié" }].to_struct
  #   users.first.first_name # => "Dorian"
  #   users.first.birthdate # => NoMethodError: undefined method `birthdate' for <struct...>
  #
  def to_struct
    map { |item| item.respond_to?(:to_struct) ? item.to_struct : item }
  end

  # Returns a new struct with the same key/value pairs
  #
  #   users = [{ name: { first: "Dorian", last: "Marié" }].to_struct
  #   users.first.name.first # => "Dorian"
  #
  def to_deep_struct
    map do |item|
      item.respond_to?(:to_deep_struct) ? item.to_deep_struct : item
    end
  end
end
