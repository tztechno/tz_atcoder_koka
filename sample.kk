
sample from iwashisnake
########################################################
########################################################

########################################################
########################################################

########################################################
#abc312_b
#19 18
###......###......

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
//abc324_a
//3
//3 2 4
//値がすべて等しいなら Yes を、そうでなければ No

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

fun read-ints(): <console,exn> list<int>
    readline().split(" ").map(fn(s) { s.parse-int.unjust })

fun main()
    val [n] = read-ints()
    var c := vector(n, 0)
    var a := vector(n, [])
    for (0, n - 1) fn(i)
        val [c'] = read-ints()
        c[i] := c'
        a[i] := read-ints()
    val [x] = read-ints()
    var min-count := Nothing
    for (0, n - 1) fn(i)
        if a[i].index-of(fn(a') { a' == x }) != -1 then
            min-count := min-count.maybe(Just(c[i]), fn(mc) { Just(min(mc, c[i])) })
    if min-count.is-nothing then
        0.println
        return ()
    val min-count' = min-count.unjust
    var res := []
    for (0, n - 1) fn(i)
        if a[i].index-of(fn(a') { a' == x }) != -1 && c[i] == min-count' then
            res := Cons(i + 1, res)
    res := res.reverse
    res.length.println
    res.foreach-indexed fn(i, j)
        if i > 0 then
            " ".print
        j.print
    "".println
########################################################
import std/os/readline

fun read-ints(): <console,exn> list<int>
    readline().split(" ").map(fn(s) { s.parse-int.unjust })

fun main()
    val pi = "3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679"
    val [n] = read-ints()
    pi.first(n + 2).string.println

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
