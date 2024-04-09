

import std/os/file
import std/os/path

fun parse-ints(s: string): exn list<int> {
    return s.split("\n").map(fn(s') { s'.parse-int.unjust })
}

fun main() {
    val s = read-text-file(path("/dev/stdin"))
    val intList = parse-ints(s)
    val [a, b] = intList
    val ans = a - b
    println(ans)
    println("")
}
