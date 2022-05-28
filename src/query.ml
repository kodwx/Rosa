let is_empty s = s = Stdlib.String.empty

let is_int s = Stdlib.int_of_string_opt s != None

let is_float s = Stdlib.float_of_string_opt s != None && Stdlib.int_of_string_opt s = None

let is_lc = Case.is_lowercase

let is_uc = Case.is_uppercase