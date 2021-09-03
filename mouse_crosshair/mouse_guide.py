from typing import Tuple

from talon import Context, Module, canvas, cron, ctrl, cron

class MouseGuide:
    def __init__(self, width: float, height: float):
        self.enabled = False
        self.canvas = None
        self.job = None
        self.last_pos = None
        self.width = width
        self.height = height

    def enable(self):
        if self.enabled:
            return
        self.enabled = True
        self.last_pos = None
        self.canvas = canvas.Canvas(0, 0, self.width + 2, self.height + 2)
        self.check_mouse()
        self.canvas.register('mousemove', self.on_mouse)
        self.canvas.register('draw', self.draw_canvas)
        self.canvas.freeze()
        # uncomment this if the mouse movement event isn't working
        self.job = cron.interval('16ms', self.check_mouse)

    def disable(self):
        if not self.enabled:
            return
        cron.cancel(self.job)
        self.enabled = False
        self.canvas.close()
        self.canvas = None

    def toggle(self):
        if self.enabled:
            self.disable()
        else:
            self.enable()

    def draw_canvas(self, canvas):
        paint = canvas.paint
        paint.color = '0000ffff' # blue
        paint.antialias = False

        dash_offset = 25 # pixels between dashes
        cx, cy = canvas.rect.center
        dashes_from_cursor = 103

        self.draw_cursor(canvas, cx, cy)

        for i in range(1, dashes_from_cursor, 1):
            delta = i * dash_offset
            hash_size = 30 if i % 5 == 0 else 10
            self.draw_dash_x(canvas, cx - delta, cy, hash_size, str(i))
            self.draw_dash_x(canvas, cx + delta, cy, hash_size, str(i))
            self.draw_dash_y(canvas, cx, cy - delta, hash_size, str(i))
            self.draw_dash_y(canvas, cx, cy + delta, hash_size, str(i))

    def draw_cursor(self, canvas, x, y):
        size = 2
        canvas.draw_line(x, y - size - 1, x, y + size)
        canvas.draw_line(x - size - 1, y, x + size, y)

    def draw_dash_x(self, canvas, x, y, size, text):
        canvas.draw_line(x, y - size - 1, x, y + size)
        offset_x = 4 if len(text) == 1 else 7
        offset_y = 23 if size == 10 else 42
        canvas.draw_text(text, x - offset_x, y + offset_y)

    def draw_dash_y(self, canvas, x, y, size, text):
        canvas.draw_line(x - size - 1, y, x + size, y)
        offset_x = 12 if size == 10 else 32
        offset_y = 4
        canvas.draw_text(text, x + offset_x, y + offset_y)

    def on_mouse(self, event):
        self.check_mouse()

    def check_mouse(self):
        pos = ctrl.mouse_pos()
        if pos != self.last_pos:
            x, y = pos
            self.canvas.move(x - self.width // 2, y - self.height // 2)
            self.last_pos = pos

# increase canvas size
mouse_guide = MouseGuide(500*11, 500*5)
#mouse_guide.enable()

mod = Module()
mod.list('mouse_cardinal', desc='cardinal directions for relative mouse movement')

def parse_cardinal(direction: str, distance: int) -> Tuple[bool, int]:
    x, y = ctrl.mouse_pos()
    if direction == 'left':
        return True, x - distance
    elif direction == 'right':
        return True, x + distance
    elif direction == 'up':
        return False, y - distance
    elif direction == 'down':
        return False, y + distance
    raise ValueError(f"unsupported cardinal direction: {direction}")

@mod.action_class
class Actions:
    def mouse_guide_enable():
        """Enable relative mouse guide"""
        mouse_guide.enable()

    def mouse_guide_disable():
        """Disable relative mouse guide"""
        mouse_guide.disable()

    def mouse_guide_toggle():
        """Toggle relative mouse guide"""
        mouse_guide.toggle()

    def mouse_cardinal(direction: str, distance: int) -> int:
        """Translate the current mouse position using a cardinal direction and a distance"""
        horiz, pos = parse_cardinal(direction, distance)
        return pos

    def mouse_cardinal_move_1d(direction: str, distance: int):
        """Move the mouse along a cardinal, e.g. 'move 1 left'"""
        x, y = ctrl.mouse_pos()
        # move curser by a small amount if distance is 0
        distance = 10 if distance == 0 else distance * 25
        horiz, pos = parse_cardinal(direction, distance)
        if horiz:
            x = pos
        else:
            y = pos
        ctrl.mouse_move(x, y)

    def mouse_cardinal_move_2d(dir1: str, dist1: int, dir2: str, dist2: int):
        """Move the mouse along a 2d cardinal, e.g. 'move 1 left 2 up'"""
        # move curser by a small amount if distance is 0
        dist1 = 10 if dist1 == 0 else dist1 * 25
        dist2 = 10 if dist2 == 0 else dist2 * 25
        horiz1, pos1 = parse_cardinal(dir1, dist1)
        horiz2, pos2 = parse_cardinal(dir2, dist2)
        if horiz1 == horiz2:
            raise ValueError('cannot move twice along the same axis')
        x, y = pos1, pos2
        if horiz2:
            y, x = x, y
        ctrl.mouse_move(x, y)

ctx = Context()
ctx.lists['user.mouse_cardinal'] = [
    'up', 'left', 'down', 'right',
    'small up', 'small left', 'small down', 'small right',
]
