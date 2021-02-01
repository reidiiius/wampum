defmodule Wampum do
  @width 36

  def quipu do
    %{
      :Z0 => "__ __ __ __ __ __ __ __ __ __ __ __ ",
      :J2 => "vv zq __ __ ry wu __ uw __ sx __ qz ",
      :J3 => "vt __ tv xq __ ws __ uu __ sw __ qx ",
      :J5 => "wr __ ut __ sv oq qo __ __ tu __ rw ",
      :J6 => "vu __ tw __ rx wt __ uv yq __ __ qy ",
      :K1 => "__ qx vt __ tv xq __ ws __ uu __ sw ",
      :K2 => "yr __ __ qz vv zq __ xs __ wu __ uw ",
      :K5 => "xr __ wt __ uv yq __ __ qy vu __ tw ",
      :K6 => "vs __ tu __ rw wr __ ut __ __ oq qo ",
      :N0 => "vr __ tt __ rv wq __ us __ su __ qw ",
      :J17 => "__ __ tu __ rw wr __ ut __ sv oq qo ",
      :J23 => "vv zq __ xs __ wu __ uw __ sx __ qz ",
      :J25 => "qr vp __ __ pv rq wo __ __ yu __ ow ",
      :J26 => "vv zq __ __ ry wu __ uw yr __ __ qz ",
      :J2H => "vr zp __ __ rv wq __ us __ su __ qw ",
      :J36 => "vu __ tw xr __ wt __ uv yq __ __ qy ",
      :J56 => "xr __ wt __ uv yq so __ qy __ __ tw ",
      :J5H => "xr __ wt __ uv yq so __ __ vu __ tw ",
      :K12 => "__ sx __ qz vv zq __ xs __ wu __ uw ",
      :K15 => "__ rx wt __ uv yq __ __ qy vu __ tw ",
      :K25 => "yr __ __ qz vv zq __ __ ry wu __ uw ",
      :K26 => "vp __ __ pv rq wo __ uy __ __ ow qr ",
      :K2H => "vr __ __ pz rv wq __ us __ su __ qw ",
      :K34 => "wr __ ut __ __ oq qo vs __ tu __ rw ",
      :K56 => "vu __ tw __ rx wt __ __ yq __ os qy ",
      :K6H => "vu __ tw __ rx wt __ uv __ __ os qy ",
      :J236 => "vv zq __ xs __ wu __ uw yr __ __ qz ",
      :J256 => "qr vp __ __ pv rq wo __ uy __ __ ow ",
      :J2K5 => "qr vp __ __ pv rq __ __ uy yu __ ow ",
      :J2K6 => "vv zq __ __ ry wu __ uw __ __ ot qz ",
      :J2L3 => "vv zq to __ __ wu __ uw __ sx __ qz ",
      :J36H => "vo __ ty xu __ ww __ ux yt __ __ qq ",
      :J3K5 => "yr __ ot qz __ zq __ __ ry wu __ uw ",
      :J3K6 => "vo __ ty xu __ ww __ ux __ __ ov qq ",
      :J5L6 => "wr __ ut __ sv oq qo vs __ __ __ rw ",
      :J6L7 => "vr __ tt __ rv wq __ us yy su __ __ ",
      :K125 => "__ sx __ qz vv zq __ __ ry wu __ uw ",
      :K15H => "__ ux yt __ ov qq __ __ ty xu __ ww ",
      :K1J5 => "__ ux yt __ ov qq vo __ __ xu __ ww ",
      :K1J6 => "__ zq to __ ry wu __ uw yr __ __ qz ",
      :K256 => "vp __ __ pv rq wo __ __ yu __ ow qr ",
      :K2J5 => "yr __ __ qz vv zq to __ __ wu __ uw ",
      :K2J6 => "vp __ __ pv rq wo __ uy yu __ __ qr ",
      :K2M1 => "__ __ ot qz vv zq __ xs __ wu __ uw ",
      :K5M4 => "vr __ tt __ rv __ __ us yy su __ qw ",
      :K6M5 => "vs __ tu __ rw wr __ __ __ sv oq qo ",
      :N167 => "yr __ __ qz __ zq to __ ry wu __ uw ",
      :N345 => "__ zq __ __ ry wu __ uw yr __ ot qz ",
      :N5L2 => "vp __ __ pv rq __ __ uy yu __ ow qr ",
      :N6M2 => "qr vp __ __ pv rq wo __ uy yu __ __ ",
      :J17L2 => "vs __ __ __ rw wr __ ut __ sv oq qo ",
      :J23K6 => "vv zq __ xs __ wu __ uw __ __ ot qz ",
      :J25L6 => "or qp __ __ tv pq ro ws __ __ __ sw ",
      :J26L3 => "vv zq to __ __ wu __ uw yr __ __ qz ",
      :J2K34 => "or qp __ __ __ pq ro ws __ uu __ sw ",
      :J2K56 => "vv zq __ __ ry wu __ __ yr __ ot qz ",
      :J2K5H => "pr rp __ __ uv yq __ __ qy vu __ tw ",
      :J2L3H => "vr zp tt __ __ wq __ us __ su __ qw ",
      :J34K6 => "vt __ tv pq ro __ __ uu __ __ or qp ",
      :J56L7 => "xr __ wt __ uv yq so __ qy vu __ __ ",
      :K12J5 => "__ sx __ qz vv zq to __ __ wu __ uw ",
      :K17J5 => "or qp vt __ tv pq ro __ __ uu __ __ ",
      :K2J17 => "__ __ __ pq ro ws __ uu __ sw or qp ",
      :K2J6H => "vu __ __ pr rp wt __ uv yq __ __ qy ",
      :K25M1 => "__ __ ot qz vv zq __ __ ry wu __ uw ",
      :K26M5 => "vt __ __ pq ro ws __ __ __ sw or qp ",
      :K2J56 => "yr __ __ qz vv zq to __ ry __ __ uw ",
      :K2M1H => "__ __ tt pz rv wq __ us __ su __ qw ",
      :K34M2 => "wr __ __ __ sv oq qo vs __ tu __ rw ",
      :K56M4 => "vu __ tw __ rx __ __ uv yq __ os qy ",
      :N25M6 => "or qp vt __ __ pq ro ws __ __ __ sw ",
      :N26L5 => "__ __ tv pq ro ws __ __ __ sw or qp ",
      :N45L2 => "vo __ __ xu __ ww __ ux yt __ ov qq ",
      :N67M2 => "__ ux __ __ ov qq vo __ ty xu __ ww ",
      :J136L7 => "__ __ tw xr __ wt __ uv yq so __ qy ",
      :J167L2 => "vu __ __ __ rx wt __ uv yq __ os qy ",
      :J16L27 => "vr __ __ __ rv wq __ us yy su __ qw ",
      :J246L3 => "vv zq to __ ry __ __ uw yr __ __ qz ",
      :J26L34 => "vv zq to xs __ __ __ uw yr __ __ qz ",
      :J2K5M4 => "yr sp __ __ vv __ __ ps ry wu __ uw ",
      :J2K6M5 => "vv zq __ __ ry wu __ __ __ sx ot qz ",
      :J2K6L3 => "vv zq to __ __ wu __ uw __ __ ot qz ",
      :J346L5 => "yr __ ot qz vv zq __ __ ry __ __ uw ",
      :J3K5M4 => "vu __ tw xr __ __ __ uv yq so __ qy ",
      :K135M4 => "__ rx wt __ __ yq __ os qy vu __ tw ",
      :K157M6 => "vv zq to __ ry wu __ __ yr __ __ qz ",
      :K1J6L7 => "__ rx wt __ uv yq __ os qy vu __ __ ",
      :K257M1 => "yr __ ot qz vv zq __ __ ry wu __ __ ",
      :K25M17 => "__ sx ot qz vv zq __ __ ry wu __ __ ",
      :K2J5M1 => "__ __ ot qz vv zq to __ __ wu __ uw ",
      :K2J5L6 => "yr __ __ qz vv zq to xs __ __ __ uw ",
      :K2J6L7 => "vv __ __ ps ry wu __ uw yr sp __ __ ",
      :K345M2 => "xr __ __ __ uv yq so __ qy vu __ tw ",
      :K35M24 => "vr __ __ __ rv wq __ us yy su __ qw ",
      :N167M4 => "vu __ __ xr __ wt __ uv yq so __ qy ",
      :N345L7 => "__ rx __ __ uv yq __ os qy vu __ tw ",
      :J167L2H => "vv __ __ __ ry wu __ uw yr __ ot qz ",
      :J2K56M4 => "vv zq __ __ ry __ __ uw yr __ ot qz ",
      :J3K56M4 => "vo __ ty xu __ __ __ ux yt __ ov qq ",
      :K1J56L7 => "__ ux yt __ ov qq vo __ ty xu __ __ ",
      :K2J56L7 => "yr __ __ qz vv zq to __ ry wu __ __ ",
      :K345M2H => "yr __ __ __ vv zq to __ ry wu __ uw "
    }
  end

  def zilch do
    {chart, keyed} = {quipu(), :Z0}

    if Map.has_key?(chart, keyed) do
      Map.get(chart, keyed)
    else
      String.duplicate("__ ", 12)
    end
  end

  def aquari(cord) when is_binary(cord) do
    span = String.length(cord)

    if span >= @width do
      String.slice(cord, 30, span) <> String.slice(cord, 00, span - 06)
    else
      zilch()
    end
  end

  def saturn(cord) when is_binary(cord) do
    span = String.length(cord)

    if span >= @width do
      String.slice(cord, 15, span) <> String.slice(cord, 00, span - 21)
    else
      zilch()
    end
  end

  def hermit(cord) when is_binary(cord) do
    span = String.length(cord)

    if span >= @width do
      cord
    else
      zilch()
    end
  end

  def helios(cord) when is_binary(cord) do
    span = String.length(cord)

    if span >= @width do
      String.slice(cord, 21, span) <> String.slice(cord, 00, span - 15)
    else
      zilch()
    end
  end

  def jovian(cord) when is_binary(cord) do
    span = String.length(cord)

    if span >= @width do
      String.slice(cord, 06, span) <> String.slice(cord, 00, span - 30)
    else
      zilch()
    end
  end

  def silver(cord) when is_binary(cord) do
    span = String.length(cord)

    if span >= @width do
      String.slice(cord, 27, span) <> String.slice(cord, 00, span - 09)
    else
      zilch()
    end
  end

  def copper(cord) when is_binary(cord) do
    span = String.length(cord)

    if span >= @width do
      String.slice(cord, 12, span) <> String.slice(cord, 00, span - 24)
    else
      zilch()
    end
  end

  def vulcan(cord) when is_binary(cord) do
    span = String.length(cord)

    if span >= @width do
      String.slice(cord, 33, span) <> String.slice(cord, 00, span - 03)
    else
      zilch()
    end
  end

  def gemini(cord) when is_binary(cord) do
    span = String.length(cord)

    if span >= @width do
      String.slice(cord, 18, span) <> String.slice(cord, 00, span - 18)
    else
      zilch()
    end
  end

  def lattice(pegbox) when is_list(pegbox) do
    IO.puts("")
    Enum.map(pegbox, fn cord -> IO.puts("\t#{cord}") end)
    IO.puts("")
  end

  def bfbfb(cord) when is_binary(cord) do
    if String.printable?(cord) do
      pegbox = [
        vulcan(cord),
        saturn(cord),
        vulcan(cord),
        saturn(cord),
        vulcan(cord)
      ]

      pegbox
    else
      [zilch()]
    end
  end

  def cgdae(cord) when is_binary(cord) do
    if String.printable?(cord) do
      pegbox = [
        copper(cord),
        silver(cord),
        jovian(cord),
        helios(cord),
        hermit(cord)
      ]

      pegbox
    else
      [zilch()]
    end
  end

  def eadgbe(cord) when is_binary(cord) do
    if String.printable?(cord) do
      pegbox = [
        copper(cord),
        vulcan(cord),
        helios(cord),
        jovian(cord),
        silver(cord),
        copper(cord)
      ]

      pegbox
    else
      [zilch()]
    end
  end

  def ennead(cord) when is_binary(cord) do
    if String.printable?(cord) do
      pegbox = [
        aquari(cord),
        saturn(cord),
        hermit(cord),
        helios(cord),
        jovian(cord),
        silver(cord),
        copper(cord),
        vulcan(cord),
        gemini(cord)
      ]

      pegbox
    else
      [zilch()]
    end
  end

  def fkbjdn(cord) when is_binary(cord) do
    if String.printable?(cord) do
      pegbox = [
        jovian(cord),
        aquari(cord),
        gemini(cord),
        jovian(cord),
        aquari(cord),
        gemini(cord)
      ]

      pegbox
    else
      [zilch()]
    end
  end

  def weave(keyed) when is_atom(keyed) do
    chart = quipu()

    if Map.has_key?(chart, keyed) do
      lattice(ennead(Map.get(chart, keyed)))
    else
      lattice([zilch()])
    end
  end

  def weave(tuned, keyed) when is_atom(tuned) and is_atom(keyed) do
    chart = quipu()

    if Map.has_key?(chart, keyed) do
      case tuned do
        :bfbfb ->
          lattice(bfbfb(Map.get(chart, keyed)))

        :cgdae ->
          lattice(cgdae(Map.get(chart, keyed)))

        :eadgbe ->
          lattice(eadgbe(Map.get(chart, keyed)))

        :ennead ->
          lattice(ennead(Map.get(chart, keyed)))

        :fkbjdn ->
          lattice(fkbjdn(Map.get(chart, keyed)))

        _ ->
          lattice([zilch()])
      end
    else
      lattice([zilch()])
    end
  end
end
