cross:
    user.mouse_guide_toggle()
# for example: mouse 10 up 30 right
cross <number> {user.mouse_cardinal} <number> {user.mouse_cardinal}:
    user.mouse_cardinal_move_2d(mouse_cardinal_1, number_1, mouse_cardinal_2, number_2)
# for example: mouse 10 up
cross <number> {user.mouse_cardinal}:
    user.mouse_cardinal_move_1d(mouse_cardinal_1, number_1)