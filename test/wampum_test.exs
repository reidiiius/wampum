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

  test "function quipu return type map" do
    assert is_map(Wpm.quipu()) == true
  end

  test "codex function return type list" do
    assert is_list(Wpm.codex()) == true
  end

  test "pegbox return string length 36" do
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
    cord = String.duplicate("__ ", @copper)
    assert is_list(Wpm.bfbfb(cord)) == true
    assert is_list(Wpm.cgdae(cord)) == true
    assert is_list(Wpm.eadgbe(cord)) == true
    assert is_list(Wpm.ennead(cord)) == true
    assert is_list(Wpm.fkbjdn(cord)) == true
  end

  test "lattice function return type atom" do
    cord = String.duplicate("__ ", @copper)
    list = [cord, cord, cord, cord, cord]
    assert is_atom(Wpm.lattice(list)) == true
  end

  test "weave function return type atom" do
    {tuned, keyed} = {:cgdae, :N0}
    assert is_atom(Wpm.weave(keyed)) == true
    assert is_atom(Wpm.weave(tuned, keyed)) == true
  end
end
