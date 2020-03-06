open Base
open Stdio

let rec sum x y accum =
    let z = x + y in
    if z > 4000000 then accum
    else if (z mod 2 = 0) then sum (y) (z) (accum + z)
    else sum y z accum 
;;
let () = printf "Total: %i\n" (sum 1 1 0)
