########################################################
import std/os/readline

fun read-ints(): <console,exn> list<int>
    readline().split(" ").map(fn(s) { s.parse-int.unjust })

fun main()
    val pi = "3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679"
    val [n] = read-ints()
    pi.first(n + 2).string.println
########################################################
import std/os/readline

val pi = "3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679"

fun main()
  val n = readline().parse-int-default()
  println(pi.first(n+2).string())
########################################################
import std/os/readline

fun main()
  val n = readline().parse-int.mbint
  val pi = "3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679"
  pi.first(n + 2).string.println
########################################################
########################################################
