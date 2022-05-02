colorArray = []  #  o mesmo que Array.new
colorHash  = {}  #  o mesmo que Hash.new

colorArray[0]         = 'vermelho'
colorArray[1]         = 'verde'
colorArray[2]         = 'azul'
colorHash['strings']  = 'vermelho'
colorHash['numbers']  = 'verde'
colorHash['keywords'] = 'azul'

colorArray.each do |color|
  puts color
end

colorHash.each do |codeType, color|
  puts codeType + ':  ' + color
end

hashBizarro = Hash.new

hashBizarro[12] = 'macacos'
hashBizarro[[]] = 'totalmente vazio'
tempo = Time.new
hashBizarro[tempo] = 'nada melhor que o Presente'

puts hashBizarro[12]
puts hashBizarro[[]]
puts hashBizarro[tempo]

