defmodule WampumTest do
  use ExUnit.Case
  doctest Wampum

  alias Wampum, as: Wpm

  @hermit 00
  @jovian 06
  @copper 12
  @saturn 15
  @gemini 18
  @helios 21
  @silver 27
  @aquari 30
  @vulcan 33
  @decons 36

  test "quipu function return type map" do
    assert is_map(Wpm.quipu()) == true
  end

  test "clefs function return type list" do
    assert is_list(Wpm.clefs()) == true
  end

  test "codex function return type atom" do
    assert is_atom(Wpm.codex()) == true
  end

  test "horus function return type integer" do
    assert is_integer(Wpm.horus()) == true
  end

  test "pegbox returns string length 36" do
    cord = Map.get(Wpm.quipu(), :N0)

    headstock = [
      Wpm.pegbox(cord, @aquari),
      Wpm.pegbox(cord, @saturn),
      Wpm.pegbox(cord, @hermit),
      Wpm.pegbox(cord, @helios),
      Wpm.pegbox(cord, @jovian),
      Wpm.pegbox(cord, @silver),
      Wpm.pegbox(cord, @copper),
      Wpm.pegbox(cord, @vulcan),
      Wpm.pegbox(cord, @gemini)
    ]

    Enum.map(headstock, fn cord ->
      assert String.length(cord) == @decons
    end)
  end

  test "tuning functions return type list" do
    cord = Wpm.zilch()
    assert is_list(Wpm.bfbfb(cord)) == true
    assert is_list(Wpm.cgdae(cord)) == true
    assert is_list(Wpm.eadgbe(cord)) == true
    assert is_list(Wpm.ennead(cord)) == true
    assert is_list(Wpm.fkbjdn(cord)) == true
  end

  test "lattice function return type atom" do
    cord = Wpm.zilch()
    list = [cord, cord, cord, cord, cord]
    assert is_atom(Wpm.lattice(list)) == true
  end

  test "weave functions return type atom" do
    {tuned, keyed} = {:cgdae, :N0}
    assert is_atom(Wpm.weave(keyed)) == true
    assert is_atom(Wpm.weave(tuned, keyed)) == true
  end

  test "gamut functions return type tuple" do
    assert is_tuple(Wpm.gamut()) == true
    assert is_tuple(Wpm.gamut(nil)) == true
  end

  test "gamut return tuple elements values :ok" do
    pegs = [:bfbfb, :cgdae, :eadgbe, :ennead, :fkbjdn, nil]

    for sign <- pegs, item <- [0, 1] do
      assert elem(Wpm.gamut(sign), item) == :ok
    end
  end
end
