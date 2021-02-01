defmodule WampumTest do
  use ExUnit.Case
  doctest Wampum

  alias Wampum, as: Wpm

  test "function quipu return type map" do
    assert is_map(Wpm.quipu()) == true
  end

  test "pegbox return string length 36" do
    {chart, keyed} = {Wpm.quipu(), :N0}

    pegbox = [
      Wpm.aquari(chart[keyed]),
      Wpm.saturn(chart[keyed]),
      Wpm.hermit(chart[keyed]),
      Wpm.helios(chart[keyed]),
      Wpm.jovian(chart[keyed]),
      Wpm.silver(chart[keyed]),
      Wpm.copper(chart[keyed]),
      Wpm.vulcan(chart[keyed]),
      Wpm.gemini(chart[keyed]),
      Wpm.zilch()
    ]

    Enum.map(pegbox, fn cord -> assert String.length(cord) == 36 end)
  end

  test "tuning functions return type list" do
    cord = String.duplicate("__ ", 12)
    assert is_list(Wpm.bfbfb(cord)) == true
    assert is_list(Wpm.cgdae(cord)) == true
    assert is_list(Wpm.eadgbe(cord)) == true
    assert is_list(Wpm.ennead(cord)) == true
    assert is_list(Wpm.fkbjdn(cord)) == true
  end

  test "lattice function return type atom" do
    cord = String.duplicate("__ ", 12)
    list = [cord, cord, cord, cord, cord]
    assert is_atom(Wpm.lattice(list)) == true
  end

  test "weave function return type atom" do
    {tuned, keyed} = {:cgdae, :N0}
    assert is_atom(Wpm.weave(keyed)) == true
    assert is_atom(Wpm.weave(tuned, keyed)) == true
  end
end
