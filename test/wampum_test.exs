defmodule WampumTest do
  use ExUnit.Case
  doctest Wampum

  alias Wampum, as: Wpm

  test "tuning function return type list" do
    assert is_list(Wpm.bfbfb()) == true
    assert is_list(Wpm.cgdae()) == true
    assert is_list(Wpm.eadgbe()) == true
    assert is_list(Wpm.ennead()) == true
    assert is_list(Wpm.fkbjdn()) == true
  end

  test "quipu function return type map" do
    assert is_map(Wpm.quipu()) == true
  end

  test "clefs function return type list" do
    assert is_list(Wpm.clefs()) == true
  end

  test "tablet function return type atom" do
    assert is_atom(Wpm.tablet(Wpm.clefs(), 0)) == true
  end

  test "codex function return type atom" do
    assert is_atom(Wpm.codex()) == true
  end

  test "horus function return type integer" do
    assert is_integer(Wpm.horus()) == true
  end

  test "zilch function return type binary" do
    assert is_binary(Wpm.zilch()) == true
  end

  test "pegbox returns string length 36" do
    cord = Map.get(Wpm.quipu(), :N0)
    harp = Wpm.pitch(Wpm.ennead(), cord)

    Enum.each(harp, fn cord ->
      assert String.length(cord) == 36
    end)
  end

  test "pitch function return type list" do
    harp = Wpm.ennead()
    cord = Wpm.zilch()
    assert is_list(Wpm.pitch(harp, cord)) == true
  end

  test "lattice function return type atom" do
    cord = Wpm.zilch()
    list = [cord, cord, cord, cord, cord]
    assert is_atom(Wpm.lattice(list)) == true
  end

  test "synod function return type atom" do
    {tuned, keyed} = {:violin, :N0}
    assert is_atom(Wpm.weave(keyed)) == true
    assert is_atom(Wpm.weave(tuned, keyed)) == true
  end

  test "weave function return type atom" do
    {tuned, keyed} = {:cello, :N0}
    assert is_atom(Wpm.weave(keyed)) == true
    assert is_atom(Wpm.weave(tuned, keyed)) == true
  end

  test "gamut function return type tuple" do
    assert is_tuple(Wpm.gamut(:bass)) == true
    assert tuple_size(Wpm.gamut(nil)) == 2
  end

  test "review function return type atom" do
    assert is_atom(Wpm.review()) == true
  end
end
