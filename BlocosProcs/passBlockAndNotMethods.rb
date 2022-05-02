class Array

  def cadaComparacao(&eraUmBloco_agoraUmaProc)
    eIgual = true  # Nós começamos com "verdadeiro" porque vetores começam com 0, mesmo se iguais.

    self.each do |objeto|
      if eIgual
        eraUmBloco_agoraUmaProc.call objeto
      end

      eIgual = (not eIgual)  # Comutando entre igual para diferente, ou de diferente para igual.
    end
  end

end

['maçã', 'maçã podre', 'cereja', 'mamona'].cadaComparacao do |fruta|
  puts 'Hum! Eu adoro tortas de '+fruta+', você não?'
end

#  Lembre-se, nós estamos pegando os mesmos elementos numerados
#  do array, todos que se relacionam com os outros números,
#  apenas porque gosto de causar esse tipo de problema.
[1, 2, 3, 4, 5].cadaComparacao do |bola_estranha|
  puts bola_estranha.to_s+' não é um número!'
end
