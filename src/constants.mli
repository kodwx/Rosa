(** String constants *)

val digits : string
(** String "0123456789" *)

val oct_digits : string
(** String "01234567" *)

val hex_digits : string
(** String "0123456789abcdefABCDEF" *)

val hex_digits_lc : string
(** String "0123456789abcdef" *)

val hex_digits_uc : string
(** String "0123456789ABCDEF" *)

val whitespace : string
(** String which includes tab, newline, return, vertical tab and form feed "\t\n\r\011\012 " *)

val empty : string
(** The empty string *)

val alpha_lower : string
(** String "abcdefghijklmnopqrstuvwxyz" *)

val alpha_upper : string
(** String "ABCDEFGHIJKLMNOPQRSTUVWXYZ" *)

val alpha : string
(** Concatenation of [alpha_lower] and [alpha_upper] *)

val alphanum : string
(** Concatenation of [alpha] and [digits] *)