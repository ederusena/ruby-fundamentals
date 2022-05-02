def FacaUmaCoisaImportante umaProc
  puts 'Todo mundo apenas ESPERE! Eu tenho uma coisa a fazer...'
  umaProc.call
  puts 'Certo pessoal, Eu terminei. Voltem a fazer o que estavam fazendo.'
end

digaOla = Proc.new do
  puts 'olá'
end

digaTchau = Proc.new do
  puts 'tchau'
end

FacaUmaCoisaImportante digaOla
FacaUmaCoisaImportante digaTchau