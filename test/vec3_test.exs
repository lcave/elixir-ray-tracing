defmodule Vec3Test do
  use ExUnit.Case
  doctest Vec3

  describe "add" do
    test "it correctly adds two 3 element tuples" do
      a = {1.0, 2.0, 3.0}
      b = {4.0, 5.0, 6.0}

      assert Vec3.add(a, b) == {5.0, 7.0, 9.0}
    end
  end

  describe "subtract" do
    test "it correctly subtracts two 3 element tuples" do
      a = {1.0, 2.0, 3.0}
      b = {4.0, 5.0, 6.0}

      assert Vec3.subtract(a, b) == {-3.0, -3.0, -3.0}
    end
  end

  describe "multiply" do
    test "it correctly multiplies each value in a 3 element tuple by the given value" do
      a = {1.0, 2.0, 3.0}

      assert Vec3.multiply(a, 2.5) == {2.5, 5.0, 7.5}
    end
  end

  describe "dot" do
    test "it correctly calculates the dot product of two 3 element tuples" do
      a = {1.0, 2.0, 3.0}
      b = {4.0, 5.0, 6.0}

      assert Vec3.dot(a, b) == 32.0
    end
  end

  describe "cross" do
    test "it correctly calculates the cross product of two 3 element tuples" do
      a = {1.0, 2.0, 3.0}
      b = {4.0, 5.0, 6.0}

      assert Vec3.cross(a, b) == {-3.0, 6.0, -3.0}
    end
  end
end
