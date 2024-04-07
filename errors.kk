############################################
############################################
############################################
############################################
############################################
############################################
############################################
############################################
############################################
############################################
############################################
############################################
############################################
############################################
abc101_a [result CE]
compile: Main.kk
Main.kk(3, 5): error: invalid syntax
 inline, noinline, rec, co, open, extend, value, reference, scoped or linear
-------------------------------------------------

import std/io
let s = readline()
let n = s.length()
var ans = 0
for (c in s) {
  if (c == '+') {
    ans += 1
  } else {
    ans -= 1
  }
}
print(ans)

############################################
### abc098_a
### Main.kk(10,18): error: identifier a-b cannot be found

import std/os/file
import std/os/path

fun parse-ints(s: string): exn list<int>
    s.split(" ").map(fn(s') { s'.parse-int.unjust })

fun main()
    val Cons(s, ss) = read-text-file(path("/dev/stdin")).lines
    val [a,b] = s.parse-ints
    val D = [a+b,a-b,a*b]
    val ans = max(D)
    ans.println
    

############################################
