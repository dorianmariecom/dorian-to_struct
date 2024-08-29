# frozen_string_literal: true

class Array
  def to_struct
    map(&:to_struct)
  end

  def from_struct
    map(&:from_struct)
  end

  def to_deep_struct
    map(&:to_deep_struct)
  end

  def from_deep_struct
    map(&:from_deep_struct)
  end
end

class Struct
  def from_struct
    to_h
  end

  def from_deep_struct
    to_h.transform_values(&:from_deep_struct)
  end
end

class Hash
  def to_struct
    Struct.new(*keys.map(&:to_sym)).new(*values)
  end

  def to_deep_struct
    Struct.new(*keys.map(&:to_sym)).new(*values.map(&:to_deep_struct))
  end
end

class Object
  def to_struct
    self
  end

  def to_deep_struct
    self
  end

  def from_struct
    self
  end

  def from_deep_struct
    self
  end
end
