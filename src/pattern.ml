let repeat n s =
  let rec rptr n s =
    if n > 1
      then s ^ rptr (n-1) s
    else
     s in
  if n < 0
    then failwith (Printf.sprintf "Rosa.Alter.repeat : Number of repetitions (%d) should not be less than zero" n)
  else if n = 0 
    then String.empty
  else if n = 1
    then s
  else rptr n s
    