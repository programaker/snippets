require "#{File.dirname(__FILE__)}/src_path"
require "array_items"

describe Array do
    strings = ["foo", "bar", "quux"]
    matrix = [[1,2], [3,4], [5,6]]

    describe :items do
        it "should work with methods without arguments" do
            strings.items.upcase.should == ["FOO", "BAR", "QUUX"]
        end
        
        it "should work with methods that have arguments" do
            (strings.items + "!!!").should == ["foo!!!", "bar!!!", "quux!!!"]
        end
        
        it "should work with methods that receive blocks" do
            (matrix.items.inject(0) {|sum, n| sum + n}).should == [3, 7, 11]
        end
    end
    
    describe :select_items do
        it "should perform a simple selection" do
            (strings.select_items > "bar").should == ["foo", "quux"]
        end
    end
end
