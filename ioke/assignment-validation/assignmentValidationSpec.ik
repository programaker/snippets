use("ispec")
use("assignmentValidation")

describe(Value,
    describe("value",
        it("should allow assignments to valid values",
            v1 = Value mimic
            v1 value = 0
            v1 value should == 0
            
            v2 = Value mimic
            v2 value = 30
            v2 value should == 30
        )
        
        it("should not allow assignments to invalid values",
            v1 = Value mimic
            fn(v1 value = nil) should signal(Condition Error)
            v1 value should == 0
            
            v2 = Value mimic
            fn(v2 value = -5) should signal(Condition Error)
            v2 value should == 0
        )
    )
)
