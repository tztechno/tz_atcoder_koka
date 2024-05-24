abc116_a.kk
###########################################
###########################################
###########################################
###########################################
###########################################
###########################################
###########################################
###########################################
import std/os/readline
fun read-ints(): <console,exn> list<int> {
    return readline().split(" ").map(fn(s) { s.parse-int.unjust })
}
fun main() {
    val intList = read-ints() // Assign the result of read-ints() to a new variable
    val a = intList[0].unjust
    val b = intList[1].unjust
    val c = intList[2].unjust
    println(a*b/2)
}
###########################################
[python]
a,b,c=map(int,input().split())
print(a*b//2)
###########################################
