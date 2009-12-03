use("ispec")
use("quicksort")

describe("quicksort",
    it("should not affect an empty list",
        [] quicksort should == []
    )
    
    it("should not affect a list with just one element",
        [6] quicksort should == [6]
        ["a"] quicksort should == ["a"]
    )
    
    it("should sort a list with n elements",
        [5,4,3,2,1] quicksort should == [1,2,3,4,5]
        ["b","a","c"] quicksort should == ["a","b","c"]
    )
)
