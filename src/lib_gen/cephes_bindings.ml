open Ctypes

module C(F: Cstubs.FOREIGN) = struct

  (* bdtr.c *)
  let bdtr      = F.foreign "bdtr"    (int @-> int @-> double @-> returning double)
  let bdtrc     = F.foreign "bdtrc"   (int @-> int @-> double @-> returning double)
  let bdtri     = F.foreign "bdtri"   (int @-> int @-> double @-> returning double)

  (* btdtr.c *)
  let btdtr     = F.foreign "btdtr"   (double @-> double @-> double @-> returning double)

  (* chbevl.c *)
  let chbevl    = F.foreign "chbevl"  (double @-> ptr double @-> int @-> returning double)

  (* chdtr.c *)
  let chdtr     = F.foreign "chdtr"   (double @-> double @-> returning double)
  let chdtrc    = F.foreign "chdtrc"  (double @-> double @-> returning double)
  let chdtri    = F.foreign "chdtri"  (double @-> double @-> returning double)

  (* expx2.c *)
  let expx2     = F.foreign "expx2"   (double @-> int @-> returning double)

  (* ndtr.c *)
  let ndtr      = F.foreign "ndtr"    (double @-> returning double)
  let erf       = F.foreign "erf"     (double @-> returning double)
  let erfc      = F.foreign "erfc"    (double @-> returning double)

  let gamma     = F.foreign "gamma"   (double @-> returning double)
  let lgam      = F.foreign "lgam"    (double @-> returning double)

  let igam      = F.foreign "igam"    (double @-> double @-> returning double)
  let igamc     = F.foreign "igamc"   (double @-> double @-> returning double)

  let ndtri     = F.foreign "ndtri"   (double @-> returning double)
  let stdtri    = F.foreign "stdtri"  (int @-> double @-> returning double)
  let pow       = F.foreign "pow"     (double @-> double @-> returning double)
end
