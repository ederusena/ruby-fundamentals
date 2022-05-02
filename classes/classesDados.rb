class Dado

  def initialize
    #  Eu vou apenas rolar o dado, apesar de
    #  podermos fazer qualquer coisa que
    #  queiramos fazer, como colocar a face '6'
    #  para cima
    rolar
  end

  def rolar
    @numeroMostrado = 1 + rand(6)
  end

  def mostrado
    @numeroMostrado
  end

end

puts Dado.new.mostrado