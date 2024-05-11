abc109_a.kk
#############################################
#############################################
#############################################
#############################################
import std/os/readline

fun read-ints(): <console,exn> list<int> {
    return readline().split(" ").map(fn(s) { s.parse-int.unjust })
}

fun main() {
    val intList = read-ints() 
    val a = intList[0].unjust
    val b = intList[1].unjust
    if ((a*b)%2==1) {
        println("Yes")
    } else {
        println("No")
    }
}
#############################################
[python]
a,b=map(int,input().split())
if (a*b)%2==1 :
    print('Yes')
else:
    print('No')
#############################################
