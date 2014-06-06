require 'test_helper'

class CaixaServiceTest < ActiveSupport::TestCase
  test "deve retornar 1 nota de R$20,00 e 1 nota de R$ 10,00 quando valor do Saque for igual a R$ 30,00" do
  	caixaService = CaixaService.new
  	valorSaque = 30

  	saqueAtual = caixaService.retornaSaque(valorSaque)

  	quantidadeNota10 = 1
  	quantidadeNota20 = 1
  	valorNota20 = 20
  	valorNota10 = 10

  	saqueEsperado = [Saque.new(quantidadeNota10, valorNota10), Saque.new(quantidadeNota20, valorNota20)]

  	assert(saqueEsperado.eql?(saqueAtual))
  end
end
