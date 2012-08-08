#{} = macro(
    newMimic = Origin mimic
    call arguments each(evaluateOn(newMimic)) 
    newMimic
)
