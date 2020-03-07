open Base
open Stdio

(* https://en.wikipedia.org/wiki/Pollard's_rho_algorithm *)

let lps x =
    let rec lps_helper x i =
        if (x = i) then x
        else let y = 
            match (x mod i) with
            |0 -> x / i
            |_ -> x 
        in 
        lps_helper y (i+1)
    in 
    lps_helper x 2
;;
let () = printf "Value: %i\n" (lps 600851475143)

