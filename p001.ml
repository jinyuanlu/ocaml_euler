open Base
open Stdio

let rec loop_sum x accum =
if x <= 0 then accum
else if (x mod 3) = 0 || (x mod 5) = 0 then loop_sum (x - 1) (accum + x)
else loop_sum (x - 1) accum
;;
let () = printf "Total: %i\n" (loop_sum 999 0)
