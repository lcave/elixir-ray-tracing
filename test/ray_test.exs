defmodule RayTest do
  use ExUnit.Case

  describe "at" do
    test "it correctly calculates the point at a given distance along a ray" do
      origin = {1.0, 2.0, 3.0}
      direction = {4.0, 5.0, 6.0}
      t = 2.0

      assert Ray.at(origin, direction, t) == {9.0, 12.0, 15.0}
    end
  end
end
