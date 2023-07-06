let rec get_last = function
| [] -> None
| [x] -> Some x
| _ :: rest -> get_last rest

let () = 
  let list = [] in 
  get_last list
  |> function
  | Some x -> print_endline (Int.to_string x)
  | None -> print_endline "empty list"