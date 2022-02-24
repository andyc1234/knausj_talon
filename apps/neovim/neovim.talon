tag: user.neovim
-

save:
    key(escape)
    insert(":wa")
    key(enter)
copy paste: insert("yyp")
fuzzy: insert(" ff")
buffer: insert(" ft")
print line: insert("SOP")

neo top: insert("gg")
neo bottom: insert("G")
neo file: insert(" ee")
neo root: insert(" ew")
neo search: insert(" fr")

window: key(ctrl-w)
window <user.arrow_key>: key(ctrl-w arrow_key)
window split: key(ctrl-w s)
window vertical: key(ctrl-w v)

tab left: insert(" r")
tab right: insert(" t")
tab first: insert(" R")
tab final: insert(" T")
tab last: insert(" s")
tab new: insert("  n")

language: insert(" n")
language (up | last | back): insert(" np")
language (down | next): insert(" nn")
language drum: insert(" nd")
language inside: insert(" ni")
language red: insert(" nr")
language out: key(ctrl-o)
language in: key(ctrl-i)
language apple: insert(" na")
