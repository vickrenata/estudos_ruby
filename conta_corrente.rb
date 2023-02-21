require_relative 'conta'

class ContasCorrente < Conta
    def initialize(numero, titular, saldo, limite)
      @numero = numero 
      @titular = titular 
      @saldo = saldo
      @limite = limite
    end
end