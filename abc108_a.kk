abc108_a.kk
##############################################
##############################################
##############################################
##############################################
##############################################
##############################################
import std/os/readline

fun read-ints(): <console,exn> list<int> {
    return readline().split(" ").map(fn(s) { s.parse-int.unjust })
}

fun main() {
    val intList = read-ints() // Assign the result of read-ints() to a new variable
    val n = intList[0].unjust
    val ans = (n/2)*((n+1)/2)
    println(ans)
}
##############################################
[python]
N=int(input())
print((N//2)*((N+1)//2))
##############################################
