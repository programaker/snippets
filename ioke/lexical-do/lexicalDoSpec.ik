use("ispec")
use("lexicalDo")

foo = method(n,
    n * n
)

createFromArg = method(arg,
    Origin mimic do!(
        value = arg
    )
)

createFromLocal = method(
    localCell = 123
    
    Origin mimic do!(
        value = localCell
    )
)

describe("do!",
    it("should also work like standard do",
        o = Origin mimic do!(
            a = [1, 2, 3]
            s = "???"
            d = {a: 1, b: 2, c: 3}
            asText = method(s)
        )
        
        o a should == [1, 2, 3]
        o s should == "???"
        o d should == {a: 1, b: 2, c: 3}
        o asText should == "???"
    )

    it("should have access to method arguments",
        o = createFromArg("lerolero")
        o value should == "lerolero"
    )
    
    it("should have access to local cells",
        o = createFromLocal
        o value should == 123
    )
    
    it("should have access to external methods",
        o = Origin mimic do!(
            value = foo(10)
        )
        
        o value should == 100
    )
)
