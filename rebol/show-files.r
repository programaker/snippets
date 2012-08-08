REBOL [
    Title: "Show Files"
    Purpose: "Listar os arquivos do diretorio informado na linha de comando"
]

; obtendo o diretorio a partir da linha de comando
param: first system/options/args
dir: to-file param

; exibindo os arquivos do diretorio (em ordem)
foreach file sort read dir [print file] 
