class Saque
  attr_reader :valor, :quantidade
  
	def initialize(quantidade, valor)
		@valor = valor
		@quantidade = quantidade
	end

  def eql?(saque)
    self.valor.eql?(saque.valor) && self.quantidade.eql?(saque.quantidade)
  end

end
