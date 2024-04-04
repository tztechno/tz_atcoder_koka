abc099_a.kk
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
    if (a>=1000) {
        "ABD".println()
    } else {
        "ABC".println()
    }
}
#########################################
