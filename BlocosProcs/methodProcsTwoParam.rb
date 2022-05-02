def facaAteFalso primeiraEntrada, umaProc
  entrada = primeiraEntrada
  saida   = primeiraEntrada

  while saida
    entrada = saida
    saida   = umaProc.call entrada
  end

  entrada
end

construindoVetorDeQuadrados = Proc.new do |vetor|
  ultimoNumero = vetor.last
  if ultimoNumero <= 0
    false
  else
    vetor.pop                            # Jogue fora o último número...
    vetor.push ultimoNumero*ultimoNumero # ... e o substitua com esse quadrado...
    vetor.push ultimoNumero-1            # ... seguido pelo número imediatamente anterior.
  end
end

sempreFalso = Proc.new do |apenasIgnoreme|
  false
end

puts facaAteFalso([5], construindoVetorDeQuadrados).inspect
puts facaAteFalso('Estou escrevendo isso às 3:00; alguém me derrube!', sempreFalso)
