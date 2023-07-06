let run_lenght_enc list =
  let rec aux count acc = function
  | [] -> []
  | [x] -> (count + 1, x) :: acc
  | h :: (b :: _ as t) -> if h = b then aux (count + 1) acc t
  else aux 0 ((count + 1, h) :: acc) t in
  List.rev (aux 0 [] list)

let rec print_tuples = function
| [] -> ()
| (a, b) :: rest ->
  Printf.printf "(%i, %i) " a b;
  print_tuples rest

let () = 
let l = [1;1;1;1;5;5;5;4;3;3;7;7] in 
  let reversed = run_lenght_enc l in
  print_tuples reversed
