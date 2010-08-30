class String
    def to_roman
        basic_values = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
        sum = 0
        current_number = nil
        
        split(//).each do |roman_number|
            number = basic_values[roman_number]
            
            if !current_number
                sum = number
            elsif number <= current_number
                sum += number
            elsif number > current_number
                sum -= current_number
                real_new_number = number - current_number
                sum += real_new_number
            end                
            
            current_number = number
        end
        
        sum
    end
end
