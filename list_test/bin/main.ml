

let reverse list =
  let rec aux o = function
  | [] -> o
  | h :: t ->  aux (h :: o) t
in
aux [] list


let () = 
let l = [1;2;3;4;5] in 
  let reversed = reverse l in
  List.iter (Printf.printf "%d ") reversed
