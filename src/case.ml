let uppercase = String.uppercase_ascii
let uc = uppercase

let lowercase = String.lowercase_ascii
let lc = lowercase

let capitalize ?(p=0) s = 
  if p = 1
    then String.capitalize_ascii s
  else
    s |> lowercase |> String.capitalize_ascii
let cap = capitalize

let cap_at i s =
  if i < 0 || i > String.length s
    then failwith (Printf.sprintf "Rosa.Case.cap_at : index %d is out of bounds, it should lie in [0, %d]" i  (String.length s) )
  else 
    let mapf n c =
      if n = i
        then Char.uppercase_ascii c
      else
        c in
    s |> String.mapi mapf
    
let uncapitalize ?(p=0) s = 
  if p = 1
    then String.uncapitalize_ascii s
  else
    s |> lowercase |> String.uncapitalize_ascii
let uncap = uncapitalize

let uncap_at i s =
  if i < 0 || i > String.length s
    then failwith (Printf.sprintf "Rosa.Case.uncap_at : index %d is out of bounds, it should lie in [0, %d]" i  (String.length s) )
  else 
    let mapf n c =
      if n = i
        then Char.lowercase_ascii c
      else
        c in
    s |> String.mapi mapf

let camel s =
  let rec map = function
    | [] -> ""
    | h :: t -> capitalize h ^ map t in
  s |> String.split_on_char ' ' |> map |> (uncapitalize ~p:1)
let camelCase = camel
let camelcase = camel

let swap s = 
  let to_char s = 
    List.init (String.length s) (String.get s) in
  let is_uc c = 
    let i = Char.code c in 
      65 <= i && i <= 90 in
  let is_lc c = 
  let i = Char.code c in 
    97 <= i && i <= 122 in
  let swap c =
    if is_uc c 
      then Char.lowercase_ascii c
    else if is_lc c
      then Char.uppercase_ascii c
    else c in
  let to_string lst =
    let buf = Buffer.create (List.length lst) in
    List.iter (Buffer.add_char buf) lst;
    Buffer.contents buf in
  s |> to_char |> List.map swap |> to_string
let swapcase = swap

let title ?(space = 1) s =
  let rec to_string lst =
    match lst with
    | [] -> ""
    | h :: t ->
      if space = 0
        then h ^ to_string t
      else 
        h ^ " " ^ to_string t in
  let fix s =
    if space != 0
      then String.sub s 0 (String.length s - 1)
    else
      s in
  s |> String.split_on_char ' ' |> List.map capitalize |> to_string |> fix
let titlecase = title

let snake ?(clean = 1) s = 
  let rec clf s =
    if s = "_"
      then failwith "Rosa.Case.snake : String should not be solely comprised of underscores if clean is not set to 0"
    else
      if s.[0] = '_'
        then clf ( String.sub s 1 (String.length s - 1) )
      else
        s in
  let rec cle s = 
    if s = "_"
      then failwith "Rosa.Case.snake : String should not be solely comprised of underscores if clean is not set to 0"
    else
      if String.ends_with ~suffix:"_" s
        then cle ( String.sub s 0 (String.length s - 1) )
      else
        s in
  if clean = 0
    then s |> String.split_on_char ' ' |> String.concat "_"
  else
    s |> lowercase |> clf |> cle |> String.split_on_char ' ' |> String.concat "_"
let snakecase = snake