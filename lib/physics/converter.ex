defmodule Physics.Converter do
  def to_nearest_tenth(val) do
    Float.ceil(val, 1)
  end

  def to_km(val) do
    val / 1000
  end

  def to_light_seconds({:miles, miles}) do
    (miles * 5.36819e-6) |> round_down
  end

  def to_light_seconds({:meters, meters}) do
    (meters * 3.335638629368e-9) |> round_down
  end

  def round_down(val) when is_float(val), do: trunc(val)
end
