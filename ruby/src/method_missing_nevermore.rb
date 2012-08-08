# altera o method_missing da classe Object para que sempre retorne nil quando não responder a uma determinada mensagem.

# isso faz com que testes como: "if objeto != nil && objeto.propriedade != nil then..." ou "if objeto && objeto.propriedade then..."
# se tornem desnecessários, sendo reduzidos a: "if objeto.propriedade != nil then..." ou "if objeto.propriedade then..."
class Object
    def method_missing(method_name, *args, &block)
        nil
    end
end
