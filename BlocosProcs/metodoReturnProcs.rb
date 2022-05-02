def compor proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

quadrado = Proc.new do |x|
  x * x
end

dobre = Proc.new do |x|
  x + x
end

dobreeEleve = compor dobre, quadrado
eleveeDobre = compor quadrado, dobre

puts dobreeEleve.call(1)
puts eleveeDobre.call(1)
