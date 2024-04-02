import std/os/file
import std/os/path

fun parse-ints(s: string): exn list<int>
    s.split(" ").map(fn(s') { s'.parse-int.unjust })

fun max3(a: int, b: int, c: int): int
  val m1 = if a > b then a else b
  if c > m1 then c else m1
  
fun main()
    val Cons(s1, ss) = read-text-file(path("/dev/stdin")).lines
    val [a, b] = s1.parse-ints
    println(max3(a+b,a+0-b,a*b))
