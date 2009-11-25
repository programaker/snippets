tryChangeStuffToNil = method(object,
    bind(
        rescue(fn(c, 
            "I can't set nil to stuff =(" println
        )),    
        
        object stuff = nil
        "ha! I can set nil to stuff >=}" println
    )
)

Foo = Origin mimic do(
    stuff = 0
)

"before stuff=" println
foo1 = Foo mimic
tryChangeStuffToNil(foo1)

"after stuff=" println

foo2 = Foo mimic do(
    cell("stuff=") = method(value,
        if(value nil?,
            error!("stuff cannot be nil!")
        )
        
        self cell(:stuff) = value
    )
)

tryChangeStuffToNil(foo2)
