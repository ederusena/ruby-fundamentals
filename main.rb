larguraDaLinha = 50
title = "Tabela de Conteúdo"
cap1 = "Capítulo 1:  Números"
cap2 = "Capítulo 2:  Letras"
cap3 = "Capítulo 3:  Variáveis"

cap1page = "página 1"
cap2page = "página 72"
cap3page = "página 118"

puts title.center  larguraDaLinha
puts
puts cap1.ljust(larguraDaLinha /2) + cap1page.rjust(larguraDaLinha/2)
puts cap2.ljust(larguraDaLinha /2) + cap2page.rjust(larguraDaLinha/2)
puts cap3.ljust(larguraDaLinha /2) + cap3page.rjust(larguraDaLinha/2)
