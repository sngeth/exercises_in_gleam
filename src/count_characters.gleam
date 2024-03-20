// Example Output
// What is the input string? Homer
// Homer has 5 character
import gleam/io
import gleam/erlang
import gleam/string
import gleam/int

pub fn main() {
  count_characters()
}

pub fn count_characters() {
  case erlang.get_line("What is the input string? ") {
    Ok(name) ->
      io.println(
        name
        |> string.trim_right
        |> string.length
        |> int.to_string(),
      )
    Error(_error) -> io.println("ERROR")
  }
}
