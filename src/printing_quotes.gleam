import gleam/io
import gleam/erlang
import gleam/string

pub fn main() {
  printing_quotes()
}

pub fn printing_quotes() {
  let quote = case erlang.get_line("What is the quote? ") {
    Ok(quote) -> quote
    Error(_error) -> "ERROR"
  }

  let author = case erlang.get_line("Who said it? ") {
    Ok(quote) -> quote
    Error(_error) -> "ERROR"
  }

  print_quote(quote, author)
}

fn print_quote(quote, author) {
  let full_quote =
    author
    |> string.trim_right
    <> " says, "
    <> "\""
    <> quote
    |> string.trim_right
    <> "\""
  io.println(full_quote)
}
