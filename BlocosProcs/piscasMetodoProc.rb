def talvezFaca umaProc
  if rand(2) == 0
    umaProc.call
  end
end

def FacaDuasVezes umaProc
  umaProc.call
  umaProc.call
end

piscar = Proc.new do
  puts '<piscada>'
end

olhandofixamente = Proc.new do
  puts '<olhando fixamente>'
end

talvezFaca piscar
talvezFaca olhandofixamente
FacaDuasVezes piscar
FacaDuasVezes olhandofixamente
