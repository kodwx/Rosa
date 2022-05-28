(** String constants *)

val digits : string
(** String "0123456789" *)

val octdigits : string
(** String "01234567" *)

val hexdigits : string
(** String "0123456789abcdefABCDEF" *)

val hexdigits_lower : string
(** String "0123456789abcdef" *)

val hexdigits_upper : string
(** String "0123456789ABCDEF" *)

val whitespace : string
(** String which includes tab, newline, return, vertical tab and form feed "\t\n\r\011\012 " *)

val empty : string
(** The empty string *)

val ascii_lower : string
(** String "abcdefghijklmnopqrstuvwxyz" *)

val ascii_upper : string
(** String "ABCDEFGHIJKLMNOPQRSTUVWXYZ" *)

val ascii_letters : string
(** Concatenation of [ascii_lower] and [ascii_upper] *)

