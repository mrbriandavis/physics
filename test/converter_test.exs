defmodule ConverterTest do
  use ExUnit.Case
  doctest Physics.Converter

  test "calculates to_km correctly" do
    to_km = Physics.Converter.to_km(1000)
    assert to_km == 1
  end

  test "calculates to_light_seconds correctly when miles" do
    to_light_seconds = Physics.Converter.to_light_seconds({:miles, 1.0e10})
    assert to_light_seconds == 53681
  end

  test "calculates to_light_seconds correctly when meters" do
    to_light_seconds = Physics.Converter.to_light_seconds({:meters, 9.0e9})
    assert to_light_seconds == 30
  end

  test "round_down rounds down correctly" do
    round_down = Physics.Converter.round_down(4.5)
    assert round_down == 4
  end

  test "round_down throws error when not a float" do
    assert_raise FunctionClauseError, fn ->
      Physics.Converter.round_down("nope")
    end
  end
end
