require_relative '../src/calculator'

describe('Calculadora') do
  before(:all) do
    @calc = Calculator.new
    # Would be for to use random numbers
    @random = Random.new
  end

  describe('Soma') do
    it('com números inteiros positivos') do
      expect(@calc.sum(120, 130)).to eql(250)
    end
    it('com números inteiros negativos') do
      expect(@calc.sum(-100, -130)).to eql(-230)
    end
    it('com apenas um número inteiro negativo') do
      expect(@calc.sum(-50, 80)).to eql(30)
    end
  end

  describe('Subtracão') do
    it('com números inteiros positivos') do
      expect(@calc.subtract(130, 120)).to eql(10)
    end
    it('com números inteiros negativos') do
      expect(@calc.subtract(-50, -80)).to eql(30)
    end
    it('com apenas um número inteiro negativo') do
      expect(@calc.subtract(-10, 35)).to eql(-45)
      expect(@calc.subtract(12, -200)).to eql(212)
    end
  end

  describe('Multiplicacão') do
    it('com números inteiros positivos') do
      expect(@calc.multiply(10, 5)).to eql(50)
    end
    it('com números inteiros negativos') do
      expect(@calc.multiply(-2, -8)).to eql(16)
    end
    it('com apenas um número inteiro negativo') do
      expect(@calc.multiply(-10, 3)).to eql(-30)
      expect(@calc.multiply(4, -6)).to eql(-24)
    end
  end

  describe('Divisão') do
    it('por 0 (zero)') do
      expect(@calc.divide(30, 0)).to include('Erro!')
    end
    it('de 0 (zero)') do
      expect(@calc.divide(0, 10)).to eql(0)
    end
    it('com números inteiros positivos') do
      expect(@calc.divide(500, 5)).to eql(100)
    end
    it('com números inteiros negativos') do
      expect(@calc.divide(-150, -2)).to eql(75)
    end
    it('com dividendo sendo um número inteiro negativo') do
      expect(@calc.divide(-50, 2)).to eql(-25)
    end
    it('com divisor sendo um número inteiro negativo') do
      expect(@calc.divide(6, -2)).to eql(-3)
    end
  end

  describe('Limpar tela') do
    it('com sucesso') do
      expect(@calc.clean_screen).to be(true)
    end
  end
end