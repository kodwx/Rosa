(** Rosa is a string library for OCaml *)

module Case = Case
module Pattern = Pattern
module Constants = Constants

let is_empty s = s = Stdlib.String.empty
let is_int s = Stdlib.int_of_string_opt s != None
let is_float s = Stdlib.float_of_string_opt s != None && Stdlib.int_of_string_opt s = None

let make ~len:len ~char:char = Stdlib.String.make len char