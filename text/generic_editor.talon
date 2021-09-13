find it:
    edit.find()

next one:
    edit.find_next()

(go word left | bounce):
    edit.word_left()

(go word right | leap):
    edit.word_right()

go left:
    edit.left()

go right:
    edit.right()

go up:
    edit.up()

go down:
    edit.down()

go (line start | head):
    edit.line_start()

go (line end | tail):
    edit.line_end()

go way left:
    edit.line_start()

go way right:
    edit.line_end()

go way down:
    edit.file_end()

go way up:
    edit.file_start()

go bottom:
    edit.file_end()

go top:
    edit.file_start()

go page down:
    edit.page_down()

go page up:
    edit.page_up()

# selecting
select line:
    edit.select_line()

select all:
    edit.select_all()

select left:
    edit.extend_left()

select right:
    edit.extend_right()

select up:
    edit.extend_line_up()

select down:
    edit.extend_line_down()

select word:
    edit.select_word()

select (word left | bounce):
    edit.extend_word_left()

select (word right | leap):
    edit.extend_word_right()

select (way left | head):
    edit.extend_line_start()

select (way right | tail):
    edit.extend_line_end()

select way up:
    edit.extend_file_start()

select way down:
    edit.extend_file_end()

# editing
indent [more]:
    edit.indent_more()

(indent less | out dent):
    edit.indent_less()

# deleting
clear line:
    edit.delete_line()

(clear left | wipe):
    key(backspace)

(clear right | whack):
    key(delete)

clear up:
    edit.extend_line_up()
    edit.delete()

clear down:
    edit.extend_line_down()
    edit.delete()

clear word:
    edit.delete_word()

(clear word left | scratch):
    edit.extend_word_left()
    edit.delete()

(clear word right | swallow):
    edit.extend_word_right()
    edit.delete()

clear (way left | head):
    edit.extend_line_start()
    edit.delete()

clear (way right | tail):
    edit.extend_line_end()
    edit.delete()

clear way up:
    edit.extend_file_start()
    edit.delete()

clear way down:
    edit.extend_file_end()
    edit.delete()

clear all:
    edit.select_all()
    edit.delete()

#copy commands
copy all:
    edit.select_all()
    edit.copy()
#to do: do we want these variants, seem to conflict
# copy left:
#      edit.extend_left()
#      edit.copy()
# copy right:
#     edit.extend_right()
#     edit.copy()
# copy up:
#     edit.extend_up()
#     edit.copy()
# copy down:
#     edit.extend_down()
#     edit.copy()

copy word:
    edit.select_word()
    edit.copy()

copy (word left | bounce):
    edit.extend_word_left()
    edit.copy()

copy (word right | leap):
    edit.extend_word_right()
    edit.copy()

copy line:
    edit.select_line()
    edit.copy()

copy head:
    edit.extend_line_start()
    edit.copy()

copy tail:
    edit.extend_line_end()
    edit.copy()

#cut commands
cut all:
    edit.select_all()
    edit.cut()
#to do: do we want these variants
# cut left:
#      edit.select_all()
#      edit.cut()
# cut right:
#      edit.select_all()
#      edit.cut()
# cut up:
#      edit.select_all()
#     edit.cut()
# cut down:
#     edit.select_all()
#     edit.cut()

cut word:
    edit.select_word()
    edit.cut()

cut (word left | bounce):
    edit.extend_word_left()
    edit.cut()

cut (word right | leap):
    edit.extend_word_right()
    edit.cut()

cut line:
    edit.select_line()
    edit.cut()

cut head:
    edit.extend_line_start()
    edit.cut()

cut tail:
    edit.extend_line_end()
    edit.cut()
