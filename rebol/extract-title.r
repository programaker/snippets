REBOL [
    Title: "Extract Title"
    Purpose: "Extrai o titulo da página web passada como parametro"
]

; obtendo a pagina web a partir da linha de comando
param: first system/options/args
page: to-url param

; extrai o titulo da pagina
if error? try [
    parse read page [thru <title> copy title to </title>]
][
    title: "Putz, não consegui ler o titulo..."
]

print title
