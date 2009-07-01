(Singleton = Origin mimic) do(mimic = Singleton)

s1 = Singleton mimic
s2 = Singleton mimic

"s1 == s2: #{s1 == s2}" println
"s1 == Singleton: #{s1 == Singleton}" println
"s2 == Singleton: #{s2 == Singleton}" println
