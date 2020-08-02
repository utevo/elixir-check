defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.
  """
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits, value <- values, do: "#{value} of #{suit}"
  end

  def shuffle(dec) do
    Enum.shuffle(dec)
  end

  def contains?(dec, card) do
    Enum.member?(dec, card)
  end

  def deal(dec, hand_size) do
    Enum.split(dec, hand_size)
  end

  def save(dec, path) do
    binary = :erlang.term_to_binary(dec)
    File.write(path, binary)
  end

  def load(path) do
    {:ok, binary} = File.read(path)
    :erlang.binary_to_term(binary)
  end

  def create_hand(hand_size) do
    Cards.create_deck
    |> Cards.shuffle
    |> Cards.deal(hand_size)
  end
end
