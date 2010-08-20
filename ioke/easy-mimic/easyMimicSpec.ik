use("ispec")
use("easyMimic")

describe("Easy Mimic",
    describe("#{}",
        it("should create a new Origin mimic",
            foo = #{
                _bla = "bla"
                asText = method(_bla)
            }
            
            foo asText should == "bla"
        )
    )
)
