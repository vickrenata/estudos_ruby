INCERIR_RECEITA = 1
VISUALISAR_RECEITAS = 2
BUSCAR_RECEITAS = 3
SAIR = 4

def bem_vindo()
  puts "Bem-vindo ao cookbook, sua rede social de receitas"
end

def menu()
  puts "[#{INCERIR_RECEITA}] Cadastra receita"
  puts "[#{VISUALISAR_RECEITAS}] Ver todas as receitas"
  puts "[#{BUSCAR_RECEITAS}] Buscar receitas"
  puts "[#{SAIR}] Sair"

  print "Escolha uma opção: "
  return gets.to_i()
end  

def incerir_receita()
  puts "Digite o nome da receita: "
  nome = gets.chomp()
  puts "Digite o tipo da receita: "
  tipo = gets.chomp()
  puts
  puts "Receita #{nome} cadastrada com sucesso!"
  puts
  return { nome: nome, tipo: tipo }
end

def imprimir_receitas(receitas)
  puts"========== Receitas cadastradas =========="
  receitas.each do |receita|
     puts "#{receita[:nome]} - #{receita[:tipo]}"
    end
    puts
    if receitas.empty?
      puts "Nenhuma receita cadastrada"
    end
end

bem_vindo()

receitas = []

opção = menu()

loop do
  if(opção == INCERIR_RECEITA)
    receitas << incerir_receita() 
  elsif(opção == VISUALISAR_RECEITAS)
      imprimir_receitas(receitas)
  elsif(opção == SAIR) 
    break
        # aqui e um for de ruby
        #for receita in |receita| do
        #  puts receita
        # end
      
        #aqui e um each de ruby
        #receitas.each do |receitas|
        #end 
  else
      puts "Opção inválida"
    end

    opção = menu()
end

puts
puts 'Obrigado por usar o Cookbook, até logo'