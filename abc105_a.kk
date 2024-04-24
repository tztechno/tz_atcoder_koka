abc105_a.kk
#######################################
#######################################
#######################################
#######################################
#######################################
#######################################
#######################################
import std/os/readline

fun read-ints(): <console,exn> list<int> {
    return readline().split(" ").map(fn(s) { s.parse-int.unjust })
}

fun main() {
    val intList = read-ints() // Assign the result of read-ints() to a new variable
    val n = intList[0].unjust
    val k = intList[1].unjust

    if (n%k==0) {
        println(0)
    } else {
        println(1)
    }
}
#######################################
