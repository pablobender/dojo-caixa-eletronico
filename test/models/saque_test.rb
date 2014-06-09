require 'test_helper'

class SaqueTest < ActiveSupport::TestCase
  test "Deve retornar quantidade e valor das notas indicadas" do
  	quantidadeNota = 10
  	valorNota = 50

    saque = Saque.new(quantidadeNota, valorNota)

    valorCorreto      = saque.valor()      == valorNota
    quantidadeCorreta = saque.quantidade() == quantidadeNota

    assert valorCorreto
    assert quantidadeCorreta
  end

  test "Deve comparar-se com outro saque" do
  	quantidadeNota = 1
  	valorNota = 10

    saque = Saque.new(quantidadeNota, valorNota)
    outroSaque = Saque.new(quantidadeNota, valorNota)

    assert saque.eql?(outroSaque)
  end
  test "Deve comparar o valor em eql?" do
  	quantidadeNota = 1
  	valorNota = 10

    saque = Saque.new(quantidadeNota, valorNota)
    outroSaque = Saque.new(2, valorNota)

    assert_not saque.eql?(outroSaque)
  end
end
