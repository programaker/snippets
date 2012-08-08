# modifica a classe Array de forma a passar uma mesma mensagem a todos
# os seus itens e coletar os resultados em um outro array
class Array
    class Items
        def initialize(array)  
            @array = array || []
        end
    end
    
    class CollectItems < Items
        def method_missing(method_name, *args, &block)
            @array.collect {|object| object.send(method_name, *args, &block)}
        end    
    end
    
    class SelectItems < Items
        def method_missing(method_name, *args, &block)
            @array.select {|object| object.send(method_name, *args, &block)}
        end
    end

    def items
        CollectItems.new self
    end
    
    def select_items
        SelectItems.new self
    end
end
