require 'test_helper'

class SaqueTest < ActiveSupport::TestCase
  test "Deve retornar quantidade e valor das notas indicadas" do
  	quantidadeNota = 10
  	valorNota = 50

    saque = Saque.new(quantidadeNota, valorNota)

    valorCorreto      = saque.getValor()      == valorNota
    quantidadeCorreta = saque.getQuantidade() == quantidadeNota

    assert valorCorreto
    assert quantidadeCorreta
  end
end
