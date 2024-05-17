abc110_a.kk
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
    val intList = read-ints() 
    val a = intList[0].unjust
    val b = intList[1].unjust
    val c = intList[2].unjust
    val ans = (a+b+c) + max(a,max(b,c))*9
    println(ans)
}
###########################################
[python]
a,b,c=map(int,input().split())
ans=(a+b+c)+max(a,b,c)*9
print(ans)
###########################################
