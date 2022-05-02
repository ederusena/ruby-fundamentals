class Dragao

  # @param [string] nome
  def initialize nome
    @nome = nome
    @dormindo = false
    @comidaEstomago = 10 #  Ele está cheio
    @comidaIntestino = 0 #  Ele não precisa ir ao quintal

    puts @nome + ' nasceu.'
  end

  def alimentar
    puts 'Você alimentou o ' + @nome + '.'
    @comidaEstomago = 10
    passagemDeTempo
  end

  def quintal
    puts 'Você levou o ' + @nome + ' até o quintal.'
    @comidaIntestino = 0
    passagemDeTempo
  end

  def colocarNaCama
    puts 'Você colocou o ' + @nome + ' na cama.'
    @dormindo = true
    3.times do
      if @dormindo
        passagemDeTempo
      end
      if @dormindo
        puts @nome + ' está roncando e enchendo o quarto de fumaça.'
      end
    end
    if @dormindo
      @dormindo = false
      puts @nome + ' está acordando.'
    end
  end

  def jogar
    puts 'Você joga o ' + @nome + ' no ar.'
    puts 'Ele dá uma risadinha e queima suas sobrancelhas.'
    passagemDeTempo
  end

  def balancar
    puts 'Você balança o ' + @nome + ' gentilmente.'
    @dormindo = true
    puts 'Ele começa a cochilar...'
    passagemDeTempo
    if @dormindo
      @dormindo = false
      puts '...mas acorda quando você pára.'
    end
  end

  private

  #  "private" significa que os métodos definidos aqui
  #  são métodos internos do objeto. (Você pode
  #  alimentá-lo, mas você não pode perguntar se
  #  ele está com fome.)

  def comFome?
    #  Nomes de métodos podem acabar com "?".
    #  Normalmente, nós fazemos isso apenas
    #  se o métodos retorna verdadeiro ou falso,
    #  como esse:
    @comidaEstomago <= 2
  end

  def precisaSair?
    @comidaIntestino >= 8
  end

  def passagemDeTempo
    if @comidaEstomago > 0
      #  Mover a comida do estômago para o intestino.
      @comidaEstomago = @comidaEstomago - 1
      @comidaIntestino = @comidaIntestino + 1
    else
      #  Nosso dragão está faminto!
      if @dormindo
        @dormindo = false
        puts 'Ele está acordando!'
      end
      puts @nome + ' está faminto! Em desespero, ele comeu VOCÊ!'
      exit #  Isso sai do programa.
    end

    if @comidaIntestino >= 10
      @comidaIntestino = 0
      puts 'Ops!  ' + @nome + ' teve um acidente...'
    end

    if comFome?
      if @dormindo
        @dormindo = false
        puts 'Ele está acordando!'
      end
      puts 'O estômago do ' + @nome + ' está roncando...'
    end

    if precisaSair?
      if @dormindo
        @dormindo = false
        puts 'Ele está acordando!'
      end
      puts @nome + ' faz a dança para ir ao quintal...'
    end
  end

end

bichinho = Dragao.new 'Norbert'
bichinho.alimentar
bichinho.jogar
bichinho.quintal
bichinho.colocarNaCama
bichinho.balancar
bichinho.colocarNaCama
bichinho.colocarNaCama
bichinho.colocarNaCama
bichinho.colocarNaCama
