"Suponha um objeto que representa uma Conta bancária, que possui um saldo." println
"A Conta tem operações de deposito e saque." println
"Queremos que o saldo seja somente leitura. Apenas as operações de deposito e saque podem alterá-lo." println
"Ioke não tem controle de visibilidade (private, protected, public)... será que dá pra impedir atribuições diretas ao saldo? Vejamos..." println

Account = Origin mimic do(
    amount = 0
    
    initialize = method(value 0, 
        self amount = value
    )
    
    deposit = method(value, 
        self amount += value
    )
    
    withdraw = method(value, 
        self amount -= value
    )
        
    asText = method(
        "-- Conta com saldo de #{amount} --"
    )
    
    before(matching: :anyFromSelf) << macro(
        self thaw!
    )
        
    after(matching: :anyFromSelf) << macro(
        self freeze!
    )
)

"\ncomeça com 4500.00..." println
a1 = Account mimic(4500.0)
a1 println

"\ndeposita 500.00. tem que deixar!" println
a1 deposit(500.0)
a1 println

"\nsaca 100.00. tem que deixar!" println
a1 withdraw(100.0)
a1 println

"\ntenta atribuir um valor diretamente ao saldo. não pode deixar!" println
bind(
    rescue(fn(c, 
        "uhuuuuuuuuuuuuuul!!! não deixou!!! continua #{a1 amount}!!!" println
    )),
    
    a1 amount = -1
    "se chegou até aqui, é porque deu merda =/" println
    a1 println
)
