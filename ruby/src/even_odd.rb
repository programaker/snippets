# script idiota para que um numero diga se é par ou impar =P
class Integer
    def odd?
        !even?
    end
    
    def even?
        self % 2 == 0
    end
end
