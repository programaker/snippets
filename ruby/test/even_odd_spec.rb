require "#{File.dirname(__FILE__)}/src_path"
require "even_odd"

describe Integer do
    describe :odd? do
        it "should answer false for zero" do
            0.odd?.should == false
        end
        
        it "should answer true for odd numbers" do
            1.odd?.should == true
            3.odd?.should == true
            5.odd?.should == true
        end
        
        it "should answer false for even numbers" do
            2.odd?.should == false
            4.odd?.should == false
            6.odd?.should == false
        end
    end
    
    describe :even? do
        it "should answer true for zero" do
            0.even?.should == true
        end
        
        it "should answer false for odd numbers" do
            1.even?.should == false
            3.even?.should == false
            5.even?.should == false
        end
        
        it "should answer true for even numbers" do
            2.even?.should == true
            4.even?.should == true
            6.even?.should == true
        end
    end
end
