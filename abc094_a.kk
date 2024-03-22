//abc094_a.kk
####################################
####################################
####################################
####################################
####################################
####################################
####################################
####################################
####################################
import std/os/file
import std/os/path

fun parse-ints(s: string): exn list<int>
    s.split(" ").map(fn(s') { s'.parse-int.unjust })

fun main()
    val Cons(s) = read-text-file(path("/dev/stdin")).lines
    val [a, b, x] = s.parse-ints
    if a<=x && x<=a+b then
        "YES".println
    else
        "NO".println   
####################################
