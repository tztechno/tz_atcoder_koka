abc186_a.kk
############################################
############################################
############################################
############################################
############################################
############################################
############################################
############################################
############################################
import std/os/readline
fun read-ints(): <console,exn> list<int> {
    return readline().split(" ").map(fn(s) { s.parse-int.unjust })
}
fun main() {
    val intList = read-ints()
    val n = intList[0].unjust
    val w = intList[1].unjust
    val a = n / w
    println(a)
}
############################################
[python]
n,w=map(int,input().split())
print(n//w)
############################################
