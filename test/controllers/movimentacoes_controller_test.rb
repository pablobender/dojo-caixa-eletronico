require 'test_helper'

class MovimentacoesControllerTest < ActionController::TestCase
  test "should success on get /movimentacoes/iniciar_saque" do
    get "iniciar_saque"
    should_response :success
  end

  test "should success on get /movimentacoes/sacar" do
    get "sacar"
    should_response :success
  end
end
