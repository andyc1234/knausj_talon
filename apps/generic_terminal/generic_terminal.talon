tag: terminal
-
# tags should be activated for each specific terminal in the respective talon file

lisa:
    user.terminal_list_directories()
lisa all:
    user.terminal_list_all_directories()
katie [<user.text>]: user.terminal_change_directory(text or "")
katie root: user.terminal_change_directory_root()
katie up: insert("cd ../")
katie up up: insert("cd ../../")
katie up up up: insert("cd ../../../")
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
save all:
    key(escape)
    insert(":wa")
    key(enter)
file: insert(" ee")
file root: insert(" ew")
fuzzy: insert(" ff")
buffer: insert(" fw")
window: key(ctrl-w)
window <user.arrow_key>: key(ctrl-w arrow_key)
window split: key(ctrl-w s)
window vertical: key(ctrl-w v)

copy paste:
    edit.copy()
    sleep(50ms)
    edit.paste()
