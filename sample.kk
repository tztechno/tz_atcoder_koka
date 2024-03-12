
sample from iwashisnake
########################################################
########################################################

########################################################
########################################################

########################################################
########################################################

########################################################

########################################################
########################################################
import std/os/file
import std/os/path

fun parse-ints(s: string): exn list<int>
    s.split(" ").map(fn(s') { s'.parse-int.unjust })

fun forev(start: int, end: int, action: int -> e ()): e ()
    if start >= end then
        action(start)
        forev(start.dec.unsafe-decreasing, end, action)

struct loc
    row : int
    col : int

fun main()
    val Cons(s1, ss) = read-text-file(path("/dev/stdin")).lines
    val [n, m] = s1.parse-ints
    val s = ss.vector.map(vector)
    var res := []
    fun check(r: int, c: int): exn bool
        var ok := True
        for (0, 3) fn(i)
            for (0, 3) fn(j)
                val sym = if i < 3 && j < 3 then '#' else '.'
                ok := (ok && (s[r + i][c + j] == sym))
                ok := (ok && (s[r + 8 - i][c + 8 - j] == sym))
        ok
    forev (n - 9, 0) fn(r)
        forev (m - 9, 0) fn(c)
            if check(r, c) then res := Cons(Loc(r + 1, c + 1), res)
    foreach (res) fn(l)
        l.row.print
        " ".print
        l.col.println
########################################################
import std/os/readline

fun read-ints(): <console,exn> list<int>
    readline().split(" ").map(fn(s) { s.parse-int.unjust })

fun main()
    val _ = read-ints()
    val a = read-ints()
    val a1 = a.head.unjust
    val ok = a.all(fn (ai) { ai == a1 })
    if ok then
        "Yes".println
    else
        "No".println
########################################################
import std/os/readline

fun main()
    val s = readline().list
    val s' = s.filter(fn(c) { !"aeiou".contains(c.string) }).string
    s'.println

########################################################
import std/os/readline

fun read-ints(): <console,exn> list<int>
    readline().split(" ").map(fn(s) { s.parse-int.unjust })

fun main()
    val _ = read-ints()
    val a = read-ints()
    val a1 = a.head.unjust
    val ok = a.all(fn (ai) { ai == a1 })
    if ok then
        "Yes".println
    else
        "No".println
########################################################
