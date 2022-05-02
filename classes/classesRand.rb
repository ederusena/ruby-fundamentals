class Dado

  def rolar
    1 + rand(6)
  end

end

#  Vamos fazer dois dados...
dados = [Dado.new, Dado.new]

#  ...e rolar cada um deles.
dados.each do |dado|
  puts dado.rolar
end
