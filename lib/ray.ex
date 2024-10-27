defmodule Ray do
  def at(origin, direction, t) do
    Vec3.multiply(direction, t) |> Vec3.add(origin)
  end

  @spec colour(tuple()) :: {number(), number(), number()}
  def colour(direction) do
    unit_direction = Vec3.unit_vector(direction)
    a = 0.5 * (elem(unit_direction, 1) + 1.0)

    white = {1.0, 1.0, 1.0}
    blue = {0.5, 0.7, 1.0}

    colour =
      Vec3.multiply(white, 1.0 - a)
      |> Vec3.add(Vec3.multiply(blue, a))

    colour
  end
end
