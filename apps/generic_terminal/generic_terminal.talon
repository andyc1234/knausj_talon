tag: terminal
-
# tags should be activated for each specific terminal in the respective talon file

lisa:
    user.terminal_list_directories()
lisa all:
    user.terminal_list_all_directories()
see dee [<user.text>]: user.terminal_change_directory(text or "")
see dee root: user.terminal_change_directory_root()
see dee: insert("cd ")
see dee up: insert("cd ../")
see dee up up: insert("cd ../../")
see dee up up up: insert("cd ../../../")
see dee (workplace | workspace):
    insert("wp")
    key(enter)
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

copy paste:
    edit.copy()
    sleep(50ms)
    edit.paste()
