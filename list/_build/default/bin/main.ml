let lenght list =
  let rec aux n = function
  | [] -> n
  | _ :: t -> aux (n + 1) t
in
aux 0 list

let () = 
let list = [1;2;3;4;5] in 
  lenght list
  |> Int.to_string
  |> print_endline
