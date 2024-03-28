abc097_a.kk
#########################################
c - a: keep sapce between number and minus
#########################################
#########################################
#########################################
#########################################
#########################################
#########################################
#########################################
#########################################
import std/os/readline

fun read-ints(): <console,exn> list<int> {
    return readline().split(" ").map(fn(s) { s.parse-int.unjust })
}

fun main() {
    val intList = read-ints() // Assign the result of read-ints() to a new variable
    val a = intList[0].unjust
    val b = intList[1].unjust
    val c = intList[2].unjust
    val d = intList[3].unjust

    if (abs(c - a) <= d) {
        "Yes".println()
    } else if (abs(a - b) <= d && abs(b - c) <= d) {
        "Yes".println()
    } else {
        "No".println()
    }
}
#########################################
