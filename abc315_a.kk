import std/os/readline

fun main()
    val s = readline().list
    val s' = s.filter(fn(c) { !"aeiou".contains(c.string) }).string
    s'.println
