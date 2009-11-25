use("ispec")
use("readOnlyObject")

describe(Value,
    describe("+",
        it("should increase the value",
            v1 = Value mimic
            v1 + 10
            v1 should == Value mimic(10)
            
            v2 = Value mimic(5)
            v2 + 10
            v2 should == Value mimic(15)
        )
    )
    
    describe("-",
        it("should decrease the value",
            v1 = Value mimic
            v1 - 10
            v1 should == Value mimic(-10)
            
            v2 = Value mimic(5)
            v2 - 10
            v2 should == Value mimic(-5)
        )
    )
    
    describe("value",
        it("should not allow direct assingment to value",
            v = Value mimic(50)        
            fn(v value = 0) should signal(Condition Error ModifyOnFrozen)
        )
    )
)
