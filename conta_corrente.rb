require_relative 'conta'

class ContaCorrente < Conta
  attr_accessor :limite

  def initialize(numero, titular, saldo, limite)
    @numero = numero 
    @titular = titular 
    @saldo = saldo
    @limite = limite
  end
end