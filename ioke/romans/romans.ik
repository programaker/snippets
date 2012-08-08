pass = macro(
    basicValues = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
    sum = 0
    currentNumber = nil
    
    "#{currentMessage name}" split("") each(romanNumber,
        number = basicValues[romanNumber]
        
        cond(
            !currentNumber,
                sum = number,
                
            number <= currentNumber,
                sum += number,
            
            number > currentNumber, 
                sum -= currentNumber
                realNewNumber = number - currentNumber
                sum += realNewNumber
        )
        
        currentNumber = number
    )
    
    sum
)
