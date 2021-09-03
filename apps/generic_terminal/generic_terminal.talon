tag: terminal
-
# tags should be activated for each specific terminal in the respective talon file

lisa:
    user.terminal_list_directories()
lisa all:
    user.terminal_list_all_directories()
katie [<user.text>]: user.terminal_change_directory(text or "")
katie root: user.terminal_change_directory_root()
clear screen: user.terminal_clear_screen()
run last: user.terminal_run_last()
rerun [<user.text>]: user.terminal_rerun_search(text or "")
rerun search: user.terminal_rerun_search("")
kill all: user.terminal_kill_all()
# For tmux
tea: key(ctrl-space)
tea left: key(ctrl-space left)
tea right: key(ctrl-space right)
tea up: key(ctrl-space up)
tea down: key(ctrl-space down)
# For vim
save:
    key(escape)
    insert(":w")
    key(enter)
file: insert(" ee")
file root: insert(" ew")
fuzzy: insert(" ff")
buffer: insert(" fw")
window: key(ctrl-w)
window <user.arrow_key>: key(ctrl-w arrow_key)
window split: key(ctrl-w s)
