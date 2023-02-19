# Struct é uma classe que permite criar objetos com atributos
# Receita é o nome da classe, logo, é o primeiro argumento
# :nome, :tempo_de_preparo, :nacionalidade são os atributos da classe (ou variáveis)
Struct . new("Receita", :nome, :tempo_de_preparo, :nacionalidade)
receitas = []

module MenuEnum
    INSERIR_RECEITA = 1
    VISUALISAR_RECEITAS = 2
    BUSCAR_RECEITAS = 3
    SAIR = 4
end

def bem_vindo()
    puts "Bem vindo ao cook book, seu livro de receitas."
end

def menu()
    puts "[#{MenuEnum::INSERIR_RECEITA}] Cadastrar receita"
    puts "[#{MenuEnum::VISUALISAR_RECEITAS}] Visualizar receitas"
    puts "[#{MenuEnum::BUSCAR_RECEITAS}] Buscar receitas"
    puts "[#{MenuEnum::SAIR}] Sair"
    print "Escolha uma opção: "
    return gets.to_i()
end

def inserir_receita()
    puts "Digite o nome da receita: "
    nome = gets.chomp()
    puts "Digite o tempo de preparo: "
    tempo = gets.chomp()
    puts "Digite a nacionalidade da receita: "
    nacionalidade = gets.chomp()
    puts
    puts "Receita #{nome} cadastrada com sucesso!"
    puts
    return Struct::Receita.new(nome, tempo, nacionalidade)
end

def listar_receitas(receitas)
    puts "========== Receitas cadastradas =========="
    if receitas.empty?
        puts "Nenhuma receita cadastrada"
    end
    receitas.each do |receita|
        puts "========== Receita =========="
        puts "Nome: #{receita.nome}"
        puts "Tempo de preparo: #{receita.tempo_de_preparo}"
        puts "Nacionalidade: #{receita.nacionalidade}"
        puts "============================="
    end
    puts
end

def buscar_receitas(receitas)
    puts "Digite o nome da receita que deseja buscar: "
    nome = gets.chomp()
    receitas.each do |receita|
        if receita.nome == nome
            puts "========== Receita =========="
            puts "Nome: #{receita.nome}"
            puts "Tempo de preparo: #{receita.tempo_de_preparo}"
            puts "Nacionalidade: #{receita.nacionalidade}"
            puts "============================="
        end
    end
end

def sair()
    puts "Saindo..."
end

bem_vindo()

opcao = menu()

loop do
    case opcao
    when MenuEnum::INSERIR_RECEITA
        receitas << inserir_receita()
        opcao = menu()
    when MenuEnum::VISUALISAR_RECEITAS
        listar_receitas(receitas)
        opcao = menu()
    when MenuEnum::BUSCAR_RECEITAS
        buscar_receitas(receitas)
        opcao = menu()
    when MenuEnum::SAIR
        sair()
        break
    else
        puts "Opção inválida!"
        opcao = menu()
    end
end

