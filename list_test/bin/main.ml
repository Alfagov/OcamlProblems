type 'a encoding = 
  | One of 'a
  | Many of int * 'a


let run_lenght_enc list =
  let rec aux count acc = function
  | [] -> []
  | [x] -> 
    if count = 0 then
      One x :: acc
    else
      Many (count + 1, x) :: acc
  | h :: (b :: _ as t) -> 
    if h = b then 
      aux (count + 1) acc t
    else 
      if count = 0 then
        aux 0 (One h :: acc) t
      else
        aux 0 (Many (count + 1, h) :: acc) t 
  in
  List.rev (aux 0 [] list)


let rec print_mixed_tuples = function
  | [] -> ()
  | Many (a, b) :: rest ->
    Printf.printf "(%i, %i) " a b;
    print_mixed_tuples rest
  | One x :: rest ->
    Printf.printf "%i " x;
    print_mixed_tuples rest

let () = 
let l = [1;1;1;1;3;5;5;8;5;4;3;3;7;7] in 
  let reversed = run_lenght_enc l in
  print_mixed_tuples reversed
