(** Pattern related operations *)

val repeat : int -> string -> string
(** Repeats a given string by given number of times.
    Raises failure if given number of repetitions is less then zero.
    {[
      Rosa.Pattern.repeat 3 "Rosa ";;
      - : string = "Rosa Rosa Rosa "
    ]}
 *)