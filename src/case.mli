(** Case related operations *)

val uppercase : string -> string
(** Converts every character of a string to uppercase using the US-ASCII character set. 
    {[
      Rosa.Case.uppercase "rosa";;
      - : string = "ROSA"
    ]}
 *)

val uc : string -> string
(** Same as [uppercase] *)

val lowercase : string -> string
(** Converts every character of a string to lowercase using the US-ASCII character set.
    {[
      Rosa.Case.lowercase "ROSA";;
      - : string = "rosa"
    ]}
 *)

val lc : string -> string
(** Same as [lowercase] *)

val capitalize : ?p:int -> string -> string
(** Converts only the first character of the string to uppercase, using the US-ASCII character set.
    If p is not explicitly set to 1, then remaining characters of the string will be converted to lowercase as well. 
    {[
      Rosa.Case.capitalize "roSa case";;
      - : string = "Rosa case"

      Rosa.Case.capitalize ~p:1 "roSa case";;
      - : string = "RoSa case"
    ]}
 *)

val cap : ?p:int -> string -> string
(** Same as [capitalize] *)

val cap_at_exn : int -> string -> string
(** Same as [capitalize] but requires the index of the character to be capitalized.
    Does not alter remaining characters in any way.
    Raises failure if the give index is out of bounds.
    {[
      Rosa.Case.cap_at 2 "rosa";;
      - : string = "roSa"
    ]}
  *)

val cap_at : int -> string -> string
(** Same as [cap_at_exn] but does not raises any exception 
    {[
      Rosa.Case.cap_at 4 "rosa";;
      - : string = "rosa"

      Rosa.Case.cap_at_exn 4 "rosa";;
      Exception:
      Failure "Rosa.Case.cap_at_exn : index 4 is out of bounds, it should lie in [0, 3]".
    ]}
 *)

val uncapitalize : ?p:int -> string -> string
(** Similar to [capitalize]
    {[
      Rosa.Case.uncapitalize "Rosa case";;
      - : string = "rosa case"
    ]}
 *)

val uncap : ?p:int -> string -> string
(** Same as [uncapitalize] *)

val uncap_at_exn : int -> string -> string
(** Similar to [cap_at_exn]
    {[
      Rosa.Case.uncap_at 2 "ROSA";;
      - : string = "ROsA"
    ]}
 *)

val uncap_at : int -> string -> string
(** Similar to [cap_at] *)


(** {1 Common case conventions} *)

val camel : string -> string
(** Converts the given string to camel case. 
    {[
      Rosa.Case.camel "rosa case camel";; 
      - : string = "rosaCaseCamel"
    ]}
 *)

val camelCase : string -> string
(** Same as [camel] *)

val camelcase : string -> string
(** Same as [camel] *)

val swap : string -> string
(** Swaps the case of alphabets in given string. 
    {[
      Rosa.Case.swap "Rosa Case Swap";;
      - : string = "rOSA cASE sWAP"

    ]}
 *)

val swapcase : string -> string
(** Same as [swap] *)

val title : ?space:int -> string -> string
(** Converts the given string to title case. 
    {[
      Rosa.Case.title "rosa case title";;
      - : string = "Rosa Case Title"

      Rosa.Case.title ~space:0 "rosa case title";;
      - : string = "RosaCaseTitle"
    ]}
 *)

val titlecase : ?space:int -> string -> string
(** Same as [title] *)

val snake : ?clean:int -> string -> string
(** Converts the given string to snake case.
    {[
      Rosa.Case.snake "Rosa case snake";;
      - : string = "rosa_case_snake"

      Rosa.Case.snake "_Rosa case snake";;
      - : string = "rosa_case_snake"  // cleans underscores present at the beginning and the end 

      Rosa.Case.snake ~clean:0 "_Rosa case snake";;
      - : string = "_Rosa_case_snake"
    ]}
  *)

val snakecase : ?clean:int -> string -> string
(** Same as [snake] *)


(** {1 Query} *)

val is_lowercase : string -> bool

val is_lc : string -> bool
(** Same as [is_lowercase] *)

val is_uppercase : string -> bool

val is_uc : string -> bool
(** Same as [is_uppercase] *)