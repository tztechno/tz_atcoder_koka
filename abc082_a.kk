abc082_a.kk
##########################################
##########################################
##########################################
##########################################
##########################################
import std/os/file
import std/os/path

fun parse-ints(s: string): exn list<int>
    s.split(" ").map(fn(s') { s'.parse-int.unjust })

fun main()
    val Cons(s1, ss) = read-text-file(path("/dev/stdin")).lines
    val [a, b] = s1.parse-ints
    val c = (a+b+1)/2
    println(c)
##########################################
[python]
import math
a,b=map(int,input().split())
print( (a+b+1)//2 )
##########################################
