tag: user.neovim
-

save:
    key(escape)
    insert(":w")
    key(enter)
save all:
    key(escape)
    insert(":wa")
    key(enter)
copy paste: insert("yyp")
fuzzy: insert(" ff")
buffer: insert(" fd")
print line: insert("SOP")

neo top: insert("gg")
neo bottom: insert("G")
neo file: insert(" ee")
neo root: insert(" ew")

window: key(ctrl-w)
window <user.arrow_key>: key(ctrl-w arrow_key)
window split: key(ctrl-w s)
window vertical: key(ctrl-w v)

language: insert(" l")
language (up | last | back): insert(" lk")
language (down | next): insert(" lj")
language (left | last | back): insert(" lh")
language (right | next): insert(" ll")
language drum: insert(" ld")
language inside: insert(" li")
language red: insert(" lr")
language out: key(ctrl-o)
language in: key(ctrl-i)
language air: insert(" la")
