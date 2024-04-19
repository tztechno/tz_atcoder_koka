abc104_a.kk
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
    val intList = read-ints() 
    val r = intList[0].unjust
    if (r<1200) {
        println("ABC")
    } else if (r<2800) {
        println("ARC")
    } else {
        println("AGC")
    }
}
#######################################
