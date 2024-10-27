defmodule Vec3 do
  def add(a, b) do
    {
      elem(a, 0) + elem(b, 0),
      elem(a, 1) + elem(b, 1),
      elem(a, 2) + elem(b, 2)
    }
  end

  def subtract(a, b) do
    {
      elem(a, 0) - elem(b, 0),
      elem(a, 1) - elem(b, 1),
      elem(a, 2) - elem(b, 2)
    }
  end

  def multiply(vec, value) do
    {
      elem(vec, 0) * value,
      elem(vec, 1) * value,
      elem(vec, 2) * value
    }
  end

  def divide(vec, value) do
    multiply(vec, 1.0 / value)
  end

  def dot(a, b) do
    elem(a, 0) * elem(b, 0) + elem(a, 1) * elem(b, 1) + elem(a, 2) * elem(b, 2)
  end

  def cross(a, b) do
    {
      elem(a, 1) * elem(b, 2) - elem(a, 2) * elem(b, 1),
      elem(a, 2) * elem(b, 0) - elem(a, 0) * elem(b, 2),
      elem(a, 0) * elem(b, 1) - elem(a, 1) * elem(b, 0)
    }
  end

  def unit_vector(a) do
    divide(a, 3)
  end
end
