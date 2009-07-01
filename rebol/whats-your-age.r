REBOL [
    Title: "What's your age?"
    Purpose: "Calculates your age, given your birthday"
]

param: first system/options/args
birthday: to-date param
age-in-days: now - birthday
age-in-years: to-integer age-in-days / 365
print join "--- " ["you are " age-in-years " years old"]
