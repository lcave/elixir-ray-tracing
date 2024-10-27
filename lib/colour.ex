defmodule Colour do
  # defstruct r: 0.0, g: 0.0, b: 0.0

  def to_ppm(vec) do
    r = (255.999 * elem(vec, 0)) |> round()
    g = (255.999 * elem(vec, 1)) |> round()
    b = (255.999 * elem(vec, 2)) |> round()
    "#{r} #{g} #{b}\n"
  end
end
