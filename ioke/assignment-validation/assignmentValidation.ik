Value = Origin mimic do(
    value = 0
    
    cell("value=") = method(v,
        if(v nil? || v < 0,
            error!("value should be >= 0")
        )
        
        self cell("value") = v
    )
)
