import std/os/readline

fun main()
    val chords = ["ACE", "BDF", "CEG", "DFA", "EGB", "FAC", "GBD"]
    val s = readline()
    val ok = chords.index-of(fn(c) { c == s }) != -1
    if ok then
        "Yes".println
    else
        "No".println
