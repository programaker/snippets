use("ispec")
use("romans")

describe("Romans",
    describe("Basic Roman Number Creation",
        it("should create the simplest numbers - from 1 to 3",
            I should == 1
            II should == 2
            III should == 3
        )
        
        it("should create the multiples of 10 - from 10 to 30",
            X should == 10
            XX should == 20
            XXX should == 30
        )
        
        it("should create the multiples of 100 - from 100 to 300",
            C should == 100
            CC should == 200
            CCC should == 300
        )
        
        it("should create the multiples of 1000 - from 1000 to 3000",
            M should == 1000
            MM should == 2000
            MMM should == 3000
        )
        
        it("should create the multiples of 5 - 5, 50, 500",
            V should == 5
            L should == 50
            D should == 500
        )
        
        it("should create numbers that are a direct sum",
            VI should == 6
            XV should == 15
            LXXIII should == 73
            MCCLXXXVIII should == 1288
        )
        
        it("should create numbers that have a subtraction part",
            IV should == 4
            XIX should == 19
            CDXCIV should == 494
            CMXIX should == 919
        )
        
        it("should create numbers with mixed cases",
            LXXXIV should == 84
            CDVIII should == 408
            MCDXIV should == 1414        
        )
    )
)
