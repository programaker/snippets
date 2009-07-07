DefaultBehavior FlowControl do! = macro(
    self mimic!(call ground)
    call arguments each(evaluateOn(self)) 
    self
)
