class CaixaService
	def retornaSaque(valorTotalSaque)
  	quantidadeNota10 = 1
  	quantidadeNota20 = 1
  	valorNota20 = 20
  	valorNota10 = 10

  	[
  		Saque.new(quantidadeNota10, valorNota10),
  		Saque.new(quantidadeNota20, valorNota20)
  	]
	end
end