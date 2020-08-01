defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.
  """
  def create do
    ["Ace", "Two", "Three"]
  end

  def shuffle(dec) do
    Enum.shuffle(dec)
  end

  def contains?(dec, card) do
    Enum.member?(dec, card)
  end
end
