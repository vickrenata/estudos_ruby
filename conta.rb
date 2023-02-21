require_relative 'cliente'

class Conta
  attr_reader :numero, :titular
  attr_accessor :saldo

  def initialize(numero, titular, saldo)
    @numero = numero 
    @titular = titular 
    @saldo = saldo
  end
  
  #metodosde leitura: attr_reader
 # def numero
 #   @numero 
 # end

 # def titular
 #   @titular
 # end

 #metodos de escrita: attr_writer
 # def titular=(outro_titular)
 #   @titular = outro_titular
 # end

  def sacar(valor)
    if saldo >= valor
     #usar o @ ou self
      self.saldo -= valor
    else
      puts "Não foi possível executar o saque"
    end
  end

  def depositar(valor)
    self.saldo += valor
  end

  def transferir(conta_destino, valor)
    sacar(valor)
    conta_destino.depositar(valor)
  end
end