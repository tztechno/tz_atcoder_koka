#####################################################
#####################################################
import std/os/readline

fun main()
  val n = readline().parse-int.mbint
  val a = readline().split(" ").map(fn(c)
    c.parse-int.mbint
  )
  var b := True
  for (0, n - 2) fn(i){
    if a[i + 1].mbint != a[0].mbint then
      b := False
  }
  if b then
    println("Yes")
  else
    println("No")
#####################################################
#####################################################
