Value = Origin mimic do(
    value = 0
    
    initialize = method(v 0, 
        @value = v
    )
    
    cell(:+) = method(v, 
        @value += v
    )
    
    cell(:-) = method(v, 
        @value -= v
    )
    
    cell(:==) = method(other,
        @value == other value
    )
        
    before(matching: :anyFromSelf) << macro(
        thaw!
    )
        
    after(matching: :anyFromSelf) << macro(
        freeze!
    )
)
