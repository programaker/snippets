use("lexicalDo")

foo = method(n, n * n)

create = method(name, stuff,
    nhaca = "nhaca"

    ;; method arguments and local cells are accessible inside "lexical do"
    Origin mimic do!(
        x = name
        y = stuff
        z = nhaca
        w = foo(10)
        a = [1, 2, 3]
        b = "????????"
        asText = method("#{x} #{y} #{z} #{w} #{a} #{b}")
    )
)

o = create("name", "stuff")
o println

u = create("lerolero", "blablabla")
u println
