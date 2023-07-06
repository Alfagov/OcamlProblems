let rec get_nth k = function
  | [] -> None
  | h :: t -> if k = 0 then Some h else get_nth (k - 1) t

let () = 
  let list = [1;2;3;4;5] in 
  get_nth 3 list
  |> function
  | Some x -> print_endline ((Int.to_string x))
  | None -> print_endline "short list"