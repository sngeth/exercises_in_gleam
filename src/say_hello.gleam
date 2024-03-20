import gleam/io
import gleam/erlang
import gleam/string

pub fn main() {
  say_hello()
}

pub fn say_hello() {
  case erlang.get_line("What is your name?: ") {
    Ok(name) -> io.println(build_greeting(name))
    Error(_error) -> io.println("ERROR")
  }
}

fn build_greeting(name: String) {
  "Hello, "
  <> name
  |> string.trim_right
  <> ", nice to meet you!"
}
