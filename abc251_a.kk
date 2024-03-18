import std/os/readline

fun main() {
  val s = readline()
  val s2 =s++s++s++s++s++s
  println(s2.first(6).string())
}
