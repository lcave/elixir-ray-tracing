defmodule ColourTest do
  use ExUnit.Case
  doctest Colour

  describe "to_ppm" do
    test "it correctly converts a colour to a PPM string" do
      c = {0.5, 0.4, 1.7}

      assert Colour.to_ppm(c) == "128 102 435\n"
    end
  end
end
