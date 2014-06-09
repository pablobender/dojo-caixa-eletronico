class CaixaService
  def retornaSaque(valorTotalSaque)
    quantidadeNota20 = 1
    valorNota20 = 20

  	saque = [ Saque.new(quantidadeNota20, valorNota20) ]
    if (valorTotalSaque > 20)
      quantidadeNota10 = 1
      valorNota10 = 10
      saque.push(Saque.new(quantidadeNota10, valorNota10))
    end
    saque
	end

end
