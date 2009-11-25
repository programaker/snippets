use("ispec")
use("singleton")

describe(Singleton,
    it("should return itself when mimicked",
        s1 = Singleton mimic
        s2 = Singleton mimic
        
        s1 should == s2
        s1 should == Singleton
        s2 should == Singleton
    )
)
