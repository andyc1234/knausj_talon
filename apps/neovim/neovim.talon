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
buffer: insert(" fw")

neo top: insert("gg")
neo bottom: insert("G")
neo file: insert(" ee")
neo root: insert(" ew")

window: key(ctrl-w)
window <user.arrow_key>: key(ctrl-w arrow_key)
window split: key(ctrl-w s)
window vertical: key(ctrl-w v)
