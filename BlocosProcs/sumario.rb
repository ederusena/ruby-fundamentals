def sumario descricaoDoBloco, &bloco
  tempoInicial = Time.now

  bloco.call

  duracao = Time.now - tempoInicial

  puts descricaoDoBloco+': '+duracao.to_s+' segundos'
end

sumario 'dobrando 25000 vezes' do
  numero = 1

  25000.times do
    numero = numero + numero
  end

  puts numero.to_s.length.to_s+' dígitos'  #  É isso mesmo: o número de dígitos nesse número ENORME.
end

sumario 'contando até um milhão' do
  numero = 0

  1000000.times do
    numero = numero + 1
  end
end
