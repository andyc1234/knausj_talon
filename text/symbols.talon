question [mark]: "?"
(downscore | underscore): "_"
double dash: "--"
(bracket | brack | left bracket): "{"
(rbrack | are bracket | right bracket): "}"
triple quote: "'''"
(triple grave | triple back tick | gravy):
    insert("```")
(dot dot | dotdot): ".."
ellipses: "..."
(comma and | spamma): ", "
plus: "+"
arrow: "->"
dub arrow: "=>"
new line: "\\n"
carriage return: "\\r"
line feed: "\\r\\n"
sammy: insert(";")
square close: insert("]")
brace close: insert("}")
paren close: insert(")")
angle close: insert(">")
single quote: insert("'")
equate: insert(" = ")
is equal: insert(" == ")

single quote empty: insert("''")
([double] quote | string) empty: insert('""')
brace empty: insert("{}")
square empty: insert("[]")
paren empty: insert("()")
angle empty: insert("<>")
percent empty: insert("%%")
back tick empty: insert("``")

single quote inside:
    insert("''")
    key(left)
([double] quote | string) inside:
    insert('""')
    key(left)
brace inside:
    insert("{}")
    key(left)
square inside:
    insert("[]")
    key(left)
paren inside:
    insert("()")
    key(left)
angle inside:
    insert("<>")
    key(left)
percent inside:
    insert("%%")
    key(left)
back tick inside:
    insert("``")
    key(left)

single quote that:
    text = edit.selected_text()
    user.paste("'{text}'")
([double] quote | string) that:
    text = edit.selected_text()
    user.paste('"{text}"')
brace that:
    text = edit.selected_text()
    user.paste("{{{text}}}")
square that:
    text = edit.selected_text()
    user.paste("[{text}]")
paren that:
    text = edit.selected_text()
    user.paste("({text})")
angle that:
    text = edit.selected_text()
    user.paste("<{text}>")
percent that:
    text = edit.selected_text()
    user.paste('%{text}%')
back tick that:
    text = edit.selected_text()
    user.paste('`{text}`')
