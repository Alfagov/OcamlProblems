
let palindrome l =
  l = List.rev l


let () = 
let l = [1;2;3;2;1] in 
  let reversed = palindrome l in
  print_endline (Bool.to_string reversed)
