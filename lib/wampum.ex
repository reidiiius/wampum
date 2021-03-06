defmodule Wampum do
  @moduledoc """
  Display fingerboard matrices of various pitch collections.

  ## Examples:

  View selection menu table of signatures.

      iex> Wampum.codex

  View selection menu table of tunings.

      iex> Wampum.stock

  View selected signature with default tuning.

      iex> Wampum.weave :N0

  View selected signature with specified tuning.

      iex> Wampum.weave :cello, :N0

  Write to file with specified tuning.

      iex> Wampum.gamut :guitar

  Read and view file that was written to.

      iex> Wampum.audit

  Erase file that was written to.

      iex> Wampum.gamut :clean

  """
  @moduledoc since: "0.1.0"

  @hermit 00
  @jovian 06
  @pillar 08
  @copper 12
  @saturn 15
  @gemini 18
  @helios 21
  @silver 27
  @aquari 30
  @vulcan 33
  @decans 36

  @lintel "Returns a List of Integer elements."

  @doc """
  - #{@lintel}
  """
  @doc since: "0.1.0"
  @spec triton() :: [integer()]
  def triton do
    digs = [
      @vulcan,
      @saturn,
      @vulcan,
      @saturn,
      @vulcan
    ]

    digs
  end

  @doc """
  - #{@lintel}
  """
  @doc since: "0.1.0"
  @spec violin() :: [integer()]
  def violin do
    digs = [
      @copper,
      @silver,
      @jovian,
      @helios,
      @hermit
    ]

    digs
  end

  @doc """
  - #{@lintel}
  """
  @doc since: "0.1.0"
  @spec guitar() :: [integer()]
  def guitar do
    digs = [
      @copper,
      @vulcan,
      @helios,
      @jovian,
      @silver,
      @copper
    ]

    digs
  end

  @doc """
  - #{@lintel}
  """
  @doc since: "0.1.0"
  @spec quartz() :: [integer()]
  def quartz do
    digs = [
      @aquari,
      @saturn,
      @hermit,
      @helios,
      @jovian,
      @silver,
      @copper,
      @vulcan,
      @gemini
    ]

    digs
  end

  @doc """
  - #{@lintel}
  """
  @doc since: "0.1.0"
  @spec thirds() :: [integer()]
  def thirds do
    digs = [
      @jovian,
      @aquari,
      @gemini,
      @jovian,
      @aquari,
      @gemini
    ]

    digs
  end

  @doc """
  - Returns a Map with Atom keys and BitString values.
  """
  @doc since: "0.1.0"
  @spec quipu() :: %{key: binary()}
  def quipu do
    model = %{
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
      :J35 => "yr __ ot qz __ zq to __ __ wu __ uw ",
      :J36 => "vu __ tw xr __ wt __ uv yq __ __ qy ",
      :J56 => "xr __ wt __ uv yq so __ qy __ __ tw ",
      :J5H => "xr __ wt __ uv yq so __ __ vu __ tw ",
      :K12 => "__ sx __ qz vv zq __ xs __ wu __ uw ",
      :K15 => "__ rx wt __ uv yq __ __ qy vu __ tw ",
      :K16 => "__ zq to __ ry wu __ uw __ __ ot qz ",
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

    model
  end

  @doc """
  - Returns a List of Atom elements which is populated with the sorted keys
    from the Map returned by `Wampum.quipu/0`.

  ## Example:

      iex> Wampum.quipu() |> Map.keys() |> Enum.sort()

  """
  @doc since: "0.1.0"
  @spec clefs() :: [atom()]
  def clefs do
    quipu()
    |> Map.keys()
    |> Enum.sort()
  end

  @doc """
  - Receives a List and an Integer as arguments.

  - Prints an #{@pillar} column tabular grid to screen.

  - Returns the Atom `:ok` if successful.

  ## Example:

      iex> Wampum.tablet(Wampum.clefs(), 0)

  """
  @doc since: "0.1.0"
  @spec tablet([atom()], integer()) :: atom()
  def tablet(menu, numb) when numb < length(menu) - 1 do
    item = Enum.at(menu, numb)

    if rem(numb, @pillar) == @pillar - 1 do
      IO.write("\t#{item}\n")
    else
      IO.write("\t#{item}")
    end

    tablet(menu, numb + 1)
  end

  def tablet(menu, numb) do
    item = Enum.at(menu, numb)

    IO.write("\t#{item}\n")
  end

  @doc """
  - Prints a tabular grid of menu items to the screen. The menu List is
    populated by the sorted keys from `Wampum.quipu/0`, and then passed as
    the first argument to `Wampum.tablet/2`.

  - Returns a Tuple whose first element is the Atom `:ok`, and the second
    element is an Integer which represents the length of the List that is
    returned by `Wampum.clefs/0`.
  """
  @doc since: "0.1.0"
  @spec codex() :: {atom(), integer()}
  def codex do
    menu = clefs()
    size = length(menu)

    IO.puts("")
    tablet(menu, @hermit)
    IO.puts("")

    {:ok, size}
  end

  @doc """
  - Receives an optional Atom time unit argument.

  - Returns an Integer that represents system time.
  """
  @doc since: "0.1.0"
  @spec horus(atom()) :: integer()
  def horus(unit \\ :second) when is_atom(unit) do
    System.system_time(unit)
  end

  @doc """
  - Returns a BitString of #{@decans} characters.
  """
  @doc since: "0.1.0"
  @spec tacit() :: binary()
  def tacit do
    String.duplicate("__ ", @copper)
  end

  @doc """
  - Receives a BitString argument and returns a Boolean.

  - Test whether given Bitstring length is greater than or equal to #{@decans}.

  - Test whether given BitString charaters are printable.

  ## Example:

      iex(4)> Wampum.posit? Wampum.quipu[:Z0]        
      true
      iex(5)> Wampum.posit? Wampum.quipu[:Z0] <> "\0"
      false

  """
  @doc since: "0.1.0"
  @spec posit?(binary()) :: boolean()
  def posit?(cord) when is_binary(cord) do
    span = String.length(cord)
    mink = span >= @decans
    posh = String.printable?(cord)

    mink and posh
  end

  @doc """
  - Receives a BitString and an Integer as arguments.

  - Then test whether BitString is greater than or equal to #{@decans}, and
    if all the characters are printable using `Wampum.posit?` as a filter.

  - If test succeeds, returns permuted BitString at passed Integer index,
    else calls `Wampum.tacit` and returns a default BitString.

  ## Example:

      iex> Wampum.pegbox(Wampum.quipu[:J6], 15)
      "wt __ uv yq __ __ qy vu __ tw __ rx "

  """
  @doc since: "0.1.0"
  @spec pegbox(binary(), integer()) :: binary()
  def pegbox(cord, numb) when is_binary(cord) and is_integer(numb) do
    span = String.length(cord)

    if posit?(cord) do
      {zero, part} = {@hermit, span - numb}
      redhead = String.slice(cord, numb, part)
      pigtail = String.slice(cord, zero, numb)

      redhead <> pigtail
    else
      tacit()
    end
  end

  @doc """
  - Receives a List of Integers and a BitString as arguments.

  - Returns a List of BitStrings permuted at indices of Integer List elements.

  ## Example:

      iex> Wampum.pitch(Wampum.violin, Wampum.quipu[:K5])

  """
  @doc since: "0.1.0"
  @spec pitch([integer()], binary()) :: [binary()]
  def pitch(digs, cord) do
    for numb <- digs, do: [] ++ pegbox(cord, numb)
  end

  @doc """
  - Receives a List of BitString elements as an argument.

  - Prints formated BitString elements to screen.

  - Returns the Atom `:ok` if successful.

  ## Example:

      iex(2)> Wampum.board(["tt __ rv wq", "su __ qw vr", "rv wq __ us"])

              tt __ rv wq
              su __ qw vr
              rv wq __ us

      :ok
  """
  @doc since: "0.1.0"
  @spec board([binary()]) :: atom()
  def board(harp) when is_list(harp) do
    IO.puts("")
    Enum.each(harp, fn cord -> IO.puts("\t#{cord}") end)
    IO.puts("")
  end

  # tuning synonyms
  @violin [:cello, :cgda, :cgdae, :gdae, :p5t, :viola, :violin]

  @triton [:a4t, :bfbf, :bfbfb, :d5t, :fbfb, :triton]

  @quartz [:bass, :beadg, :eadg, :eadgc, :p4t, :quartz]

  @guitar [:eadgbe, :guitar]

  @thirds [:fkbjdn, :m3t, :thirds]

  # cleaning synonyms
  @scrub [:clean, :clear, :empty, :erase, :scrub]

  @doc """
  - Returns a sorted List of tuning Atom elements.
  """
  @doc since: "0.1.0"
  @spec alton() :: [atom()]
  def alton do
    lats = @violin ++ @triton ++ @quartz ++ @guitar ++ @thirds

    Enum.sort(lats)
  end

  @doc """
  - Prints a tabular grid of menu items to the screen. The menu List is
    populated by a sorted List of tuning Atoms, and then passed as
    the first argument to `Wampum.tablet/2`.

  - Returns a Tuple whose first element is the Atom `:ok`, and the second
    element is an Integer which represents the length of the menu List.
  """
  @doc since: "0.1.0"
  @spec stock() :: {atom(), integer()}
  def stock do
    menu = alton()
    size = length(menu)

    IO.puts("")
    tablet(menu, @hermit)
    IO.puts("")

    {:ok, size}
  end

  @doc """
  - Receives an optional Atom argument.

  - Returns synonymous Atom if argument matches predefined condition,
    else returns a Boolean.

  ## Example:

      iex> Wampum.synod(:eadgbe)
      :guitar
      iex> Wampum.synod(:zigzag)
      true
      iex> Wampum.synod(nil)
      false

  """
  @doc since: "0.1.0"
  @spec synod(atom()) :: atom()
  def synod(tuned \\ nil) when is_atom(tuned) do
    cond do
      tuned in @violin ->
        :violin

      tuned in @triton ->
        :triton

      tuned in @quartz ->
        :quartz

      tuned in @guitar ->
        :guitar

      tuned in @thirds ->
        :thirds

      tuned in @scrub ->
        :scrub

      tuned in [false, nil] ->
        false

      true ->
        true
    end
  end

  @doc """
  - Receives a signature Atom argument.

  - Prints matrix of default tuning applied to selected signature.

  - Returns a Tuple with two Atoms.

  ## Example:

      iex> Wampum.weave(:N0)

  """
  @doc since: "0.1.0"
  @spec weave(atom()) :: {atom(), atom()}
  def weave(keyed \\ nil) when is_atom(keyed) do
    model = quipu()

    if Map.has_key?(model, keyed) do
      cord = Map.get(model, keyed)

      if posit?(cord) do
        # default tuning
        digs = quartz()

        pitch(digs, cord) |> board()
      else
        wire = inspect(cord, binaries: :as_strings)

        IO.puts("\n\t#{wire}\n")
      end

      {:ok, keyed}
    else
      wire = inspect(keyed)

      IO.puts("\n\t#{wire} ?\n")

      {:error, keyed}
    end
  end

  @doc """
  - Receives two Atom arguments. The first argument represents the tuning
    to implement, while the second argument represents the key signature.

  - Prints matrix of specified tuning applied to selected signature.

  - Returns a Tuple with two Atoms. If successful, the first element will
    be the Atom `:ok`, and the second element will be the tuning implemented.
    Else, the first element will be the Atom `:error`, and the second element
    will be the causative Atom argument passed.


  ## Example:

      iex> Wampum.weave(:cello, :N0)

  """
  @doc since: "0.1.0"
  @spec weave(atom(), atom()) :: {atom(), atom()}
  def weave(tuned, keyed) when is_atom(tuned) and is_atom(keyed) do
    cloak = synod(tuned)
    taboo = is_boolean(cloak)

    if taboo do
      wire = inspect(tuned)

      IO.puts("\n\t#{wire} ?\n")

      {:error, tuned}
    else
      model = quipu()

      if Map.has_key?(model, keyed) do
        cord = Map.get(model, keyed)

        if posit?(cord) do
          cond do
            cloak in [:guitar, :quartz, :thirds, :triton, :violin] ->
              digs = apply(__MODULE__, cloak, [])

              pitch(digs, cord) |> board()

            true ->
              wire = inspect(cloak)

              IO.puts("\n\t#{wire} ?\n")
          end

          {:ok, tuned}
        else
          wire = inspect(cord, binaries: :as_strings)

          IO.puts("\n\t#{wire}\n")
        end
      else
        wire = inspect(keyed)

        IO.puts("\n\t#{wire} ?\n")

        {:error, keyed}
      end
    end
  end

  @doc false
  @doc since: "0.1.0"
  @spec bloom(pid(), binary(), [integer()], binary()) :: atom()
  defp bloom(roll, yarn, digs, cord) when is_pid(roll) and is_binary(yarn) do
    IO.write(roll, yarn)

    if is_list(digs) and is_binary(cord) do
      Enum.each(pitch(digs, cord), fn item ->
        IO.write(roll, "\t#{item}\n")
      end)
    end
  end

  @doc """
  - Receives a BitString Path and returns a Boolean.

  - Test whether Path type is relative or absolute.

  - If Path type is absolute then return false.

  - If relative then test for Path directory.

  - If no Path directory then create directory.

  - Test if target File exist, if so return true.

  - If no File exist, create File and return true.

  ## Example:

      iex> Wampum.venue? "assets/exchequer.txt"
      true

  """
  @doc since: "0.1.0"
  @spec venue?(binary()) :: boolean()
  def venue?(route) when is_binary(route) do
    typal = Path.type(route)

    if typal == :relative do
      chest = Path.dirname(route)

      unless File.dir?(chest) do
        File.mkdir(chest)
      end

      unless File.exists?(route) do
        File.touch(route, horus(:second))
      end

      true
    else
      false
    end
  end

  @epilog "assets/exchequer.txt"

  @doc """
  - Receives an Atom argument which represents either a tuning
    implementation or a cleaning procedure.

  - Write all signatures implemented with specified tuning to file.

  - Overwrite the data that was previously written to file.

  - The current file path is: `"#{@epilog}"`

  - Returns a Tuple with two Atoms. If successful, the first element will
    be the Atom `:ok`, and the second element will be the tuning implemented.
    Else, the first element will be the Atom `:error`, and the second element
    will be the causative Atom argument passed.

  ## Examples:

      iex> Wampum.gamut(:guitar)
      {:ok, :guitar}
      iex> Wampum.gamut(:clean)
      {:ok, :clean}
      iex> Wampum.gamut(:wrong)
      {:error, :wrong}

  """
  @doc since: "0.1.0"
  @spec gamut(atom()) :: {atom(), atom()}
  def gamut(tuned \\ nil) when is_atom(tuned) do
    cloak = synod(tuned)
    taboo = is_boolean(cloak)

    if taboo do
      wire = inspect(tuned)

      IO.puts("\n\t#{wire} ?\n")

      {:error, tuned}
    else
      route = @epilog
      typal = Path.type(route)
      place = venue?(route)
      media = File.regular?(route)

      if place and media do
        model = quipu()
        signs = clefs()
        final = List.last(signs)
        strum = String.upcase(to_string(tuned))
        epoch = horus(:microsecond)
        paddy = "\n\n"

        File.open(route, [:write, :utf8], fn roll ->
          Enum.each(signs, fn keyed ->
            cord = Map.get(model, keyed)
            yarn = "#{paddy}\t#{keyed}-#{strum}-I#{epoch}\n"

            if posit?(cord) do
              cond do
                cloak in [:guitar, :quartz, :thirds, :triton, :violin] ->
                  digs = apply(__MODULE__, cloak, [])

                  bloom(roll, yarn, digs, cord)

                :scrub ->
                  if keyed == final do
                    IO.write(roll, "")
                  end

                true ->
                  wire = inspect(cloak)

                  if keyed == final do
                    IO.puts("\n\t#{wire} ?\n")
                  end
              end
            else
              wire = inspect(cord, binaries: :as_strings)

              if keyed == final do
                IO.puts("\n\t#{wire}\n")
              end
            end
          end)

          IO.write(roll, paddy)
        end)

        {:ok, tuned}
      else
        IO.puts("\n\tPathology: #{route}\n")

        {:error, typal}
      end
    end
  end

  @doc """
  - Read and view the file that was written to.

  - The current file path is: `"#{@epilog}"`

  - Returns a Tuple containing an Atom and BitString path.
  """
  @doc since: "0.1.0"
  @spec audit() :: {atom(), binary()}
  def audit do
    route = @epilog
    typal = Path.type(route)
    place = File.exists?(route)
    media = File.regular?(route)

    if place and media do
      File.read!(route) |> IO.write()

      {:ok, route}
    else
      IO.puts("\n\tPathology: #{route}\n")

      {:error, typal}
    end
  end
end
