



let () = 
let list = [1;2;3;4;5] in 
  get_last2 list
  |> function
  | Some (x, y) -> print_endline ((Int.to_string x) ^ " " ^ (Int.to_string y))
  | None -> print_endline "short list"
