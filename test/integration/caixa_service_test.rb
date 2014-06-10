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

    saqueEsperado = [Saque.new(quantidadeNota20, valorNota20), Saque.new(quantidadeNota10, valorNota10)]

    assert(saqueEsperado.eql?(saqueAtual))
  end

  test "deve retornar 1 nota de R$10,00 quando o valor do saque for igual a R$10,00" do
    caixaService = CaixaService.new
    valorSaque = 10

    saqueAtual = caixaService.retornaSaque(valorSaque)

    quantidadeNota10 = 1
    valorNota10 = 10

    saqueEsperado = [Saque.new(quantidadeNota10, valorNota10)]

    assert(saqueEsperado.eql?(saqueAtual))
  end

  test "deve retornar 1 nota de R$20,00 quando o valor do saque for igual a R$20,00" do
    caixaService = CaixaService.new
    valorSaque = 20

    saqueAtual = caixaService.retornaSaque(valorSaque)

    quantidadeNota20 = 1
    valorNota20 = 20

    saqueEsperado = [Saque.new(quantidadeNota20, valorNota20)]

    assert(saqueEsperado.eql?(saqueAtual))
  end

  test "deve retornar 1 nota de R$50,00 quando o valor do saque for igual a R$50,00" do
    caixaService = CaixaService.new
    valorSaque = 50

    saqueAtual = caixaService.retornaSaque(valorSaque)

    quantidadeNota50 = 1
    valorNota50 = 50

    saqueEsperado = [Saque.new(quantidadeNota50, valorNota50)]

    assert(saqueEsperado.eql?(saqueAtual))
  end

  test "deve retornar 1 nota de R$100,00 quando o valor do saque for igual a R$100,00" do
    caixaService = CaixaService.new
    valorSaque = 100

    saqueAtual = caixaService.retornaSaque(valorSaque)

    quantidadeNota100 = 1
    valorNota100 = 100

    saqueEsperado = [Saque.new(quantidadeNota100, valorNota100)]

    assert(saqueEsperado.eql?(saqueAtual))
  end

  test "deve retornar 10 nota de R$100,00 quando o valor do saque for igual a R$1.000,00" do
    caixaService = CaixaService.new
    valorSaque = 1000

    saqueAtual = caixaService.retornaSaque(valorSaque)

    quantidadeNota100 = 10
    valorNota100 = 100

    saqueEsperado = [Saque.new(quantidadeNota100, valorNota100)]

    assert(saqueEsperado.eql?(saqueAtual))
  end

  test "deve retornar 1 nota de R$20 e 1 nota de R$5 quando o valor do saque for igual a R$25" do
    caixaService = CaixaService.new
    valorSaque = 25

    saqueAtual = caixaService.retornaSaque(valorSaque)

    quantidadeNota5 = 1
    valorNota5 = 5

    quantidadeNota20 = 1
    valorNota20 = 20

    saqueEsperado = [Saque.new(quantidadeNota20, valorNota20),
                     Saque.new(quantidadeNota5, valorNota5)]

    assert(saqueEsperado.eql?(saqueAtual))
  end
end
