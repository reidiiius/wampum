# Wampum
Beadwork

---

### Download

    git clone https://github.com/reidiiius/wampum.git

---

### Usage
Command-line

    cd wampum/

    iex -S mix

    Interactive Elixir (1.10.3)
    iex(1)> Wampum.codex              

            J136L7  J167L2  J167L2H J16L27  J17     J17L2   J2      J23
            J236    J23K6   J246L3  J25     J256    J25L6   J26     J26L3
            J26L34  J2H     J2K34   J2K5    J2K56   J2K56M4 J2K5H   J2K5M4
            J2K6    J2K6L3  J2K6M5  J2L3    J2L3H   J3      J346L5  J34K6
            J35     J36     J36H    J3K5    J3K56M4 J3K5M4  J3K6    J5
            J56     J56L7   J5H     J5L6    J6      J6L7    K1      K12
            K125    K12J5   K135M4  K15     K157M6  K15H    K16     K17J5
            K1J5    K1J56L7 K1J6    K1J6L7  K2      K25     K256    K257M1
            K25M1   K25M17  K26     K26M5   K2H     K2J17   K2J5    K2J56
            K2J56L7 K2J5L6  K2J5M1  K2J6    K2J6H   K2J6L7  K2M1    K2M1H
            K34     K345M2  K345M2H K34M2   K35M24  K5      K56     K56M4
            K5M4    K6      K6H     K6M5    N0      N167    N167M4  N25M6
            N26L5   N345    N345L7  N45L2   N5L2    N67M2   N6M2    Z0
    :ok
    iex(2)> Wampum.weave :N0

            __ qw vr __ tt __ rv wq __ us __ su 
            wq __ us __ su __ qw vr __ tt __ rv 
            vr __ tt __ rv wq __ us __ su __ qw 
            us __ su __ qw vr __ tt __ rv wq __ 
            tt __ rv wq __ us __ su __ qw vr __ 
            su __ qw vr __ tt __ rv wq __ us __ 
            rv wq __ us __ su __ qw vr __ tt __ 
            qw vr __ tt __ rv wq __ us __ su __ 
            __ us __ su __ qw vr __ tt __ rv wq 
    
    :ok
    iex(3)> Wampum.weave :cello, :N0 

            rv wq __ us __ su __ qw vr __ tt __ 
            su __ qw vr __ tt __ rv wq __ us __ 
            tt __ rv wq __ us __ su __ qw vr __ 
            us __ su __ qw vr __ tt __ rv wq __ 
            vr __ tt __ rv wq __ us __ su __ qw 
    
    :ok
    iex(4)> Wampum.gamut :guitar 
    {:ok, :guitar}
    iex(5)> Wampum.audit

            N0-GUITAR-I1613416021631869
            rv wq __ us __ su __ qw vr __ tt __ 
            qw vr __ tt __ rv wq __ us __ su __ 
            us __ su __ qw vr __ tt __ rv wq __ 
            tt __ rv wq __ us __ su __ qw vr __ 
            su __ qw vr __ tt __ rv wq __ us __ 
            rv wq __ us __ su __ qw vr __ tt __ 

            ...
    :ok
    iex(6)>

---

### Distribution
MIT License

