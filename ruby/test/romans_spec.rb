require "#{File.dirname(__FILE__)}/src_path"
require "romans"

describe "Romans" do
    describe "Basic Roman Number Creation" do
        it "should create the simplest numbers - from 1 to 3" do
            "I".to_roman.should == 1
            "II".to_roman.should == 2
            "III".to_roman.should == 3
        end
        
        it "should create the multiples of 10 - from 10 to 30" do
            "X".to_roman.should == 10
            "XX".to_roman.should == 20
            "XXX".to_roman.should == 30
        end
        
        it "should create the multiples of 100 - from 100 to 300" do
            "C".to_roman.should == 100
            "CC".to_roman.should == 200
            "CCC".to_roman.should == 300
        end
        
        it "should create the multiples of 1000 - from 1000 to 3000" do
            "M".to_roman.should == 1000
            "MM".to_roman.should == 2000
            "MMM".to_roman.should == 3000
        end
        
        it "should create the multiples of 5 - 5, 50, 500" do
            "V".to_roman.should == 5
            "L".to_roman.should == 50
            "D".to_roman.should == 500
        end
        
        it "should create numbers that are a direct sum" do
            "VI".to_roman.should == 6
            "XV".to_roman.should == 15
            "LXXIII".to_roman.should == 73
            "MCCLXXXVIII".to_roman.should == 1288
        end
        
        it "should create numbers that have a subtraction part" do
            "IV".to_roman.should == 4
            "XIX".to_roman.should == 19
            "CDXCIV".to_roman.should == 494
            "CMXIX".to_roman.should == 919
        end
        
        it "should create numbers with mixed cases" do
            "LXXXIV".to_roman.should == 84
            "CDVIII".to_roman.should == 408
            "MCDXIV".to_roman.should == 1414        
        end
    end
end
