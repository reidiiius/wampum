defmodule WampumTest do
  use ExUnit.Case
  doctest Wampum

  alias Wampum, as: Wpm

  test "tuning functions return type list" do
    triton = Wpm.bfbfb()
    violin = Wpm.cgdae()
    guitar = Wpm.eadgbe()
    quartz = Wpm.ennead()
    thirds = Wpm.fkbjdn()

    for digs <- [
          triton,
          violin,
          guitar,
          quartz,
          thirds
        ],
        do: assert(is_list(digs) == true)
  end

  test "quipu function return type map" do
    chart = Wpm.quipu()

    assert is_map(chart) == true
  end

  test "clefs function return type list" do
    menu = Wpm.clefs()

    assert is_list(menu) == true
  end

  test "tablet function return type atom" do
    menu = Wpm.clefs()
    kept = Wpm.tablet(menu, 0)

    assert is_atom(kept) == true
  end

  test "codex function return type tuple" do
    kept = Wpm.codex()

    assert is_tuple(kept) == true
    assert tuple_size(kept) == 2
  end

  test "horus function return type integer" do
    unit = :second
    numb = Wpm.horus(unit)

    assert is_integer(numb) == true
  end

  test "tacit function return type binary" do
    cord = Wpm.tacit()

    assert is_binary(cord) == true
    assert String.length(cord) == 36
  end

  test "pegbox returns string length 36" do
    digs = Wpm.ennead()
    cord = Wpm.tacit()

    Enum.each(digs, fn tune ->
      hair = Wpm.pegbox(cord, tune)

      assert String.length(hair) == 36
    end)
  end

  test "pitch function return type list" do
    digs = Wpm.ennead()
    cord = Wpm.tacit()
    harp = Wpm.pitch(digs, cord)

    assert is_list(harp) == true
  end

  test "board function return type atom" do
    cord = Wpm.tacit()
    harp = [cord, cord]
    kept = Wpm.board(harp)

    assert is_atom(kept) == true
  end

  test "synod function return type atom" do
    for tuned <- [:violin, nil, :noop] do
      kept = Wpm.synod(tuned)

      assert is_atom(kept) == true
    end
  end

  test "weave function return type tuple" do
    {tuned, keyed} = {:cello, :N0}
    ones = Wpm.weave(keyed)
    twos = Wpm.weave(tuned, keyed)

    for kept <- [ones, twos] do
      assert is_tuple(kept) == true
      assert tuple_size(kept) == 2
    end
  end

  test "gamut function return type tuple" do
    for tuned <- [:bass, nil, :erase] do
      kept = Wpm.gamut(tuned)

      assert is_tuple(kept) == true
      assert tuple_size(kept) == 2
    end
  end

  test "audit function return type typle" do
    kept = Wpm.audit()

    assert is_tuple(kept) == true
    assert tuple_size(kept) == 2
  end
end
