class MovimentacoesController < ApplicationController
  def iniciar_saque
  end

  def sacar
    caixa = CaixaService.new
    @valor_sacado = params[:valor].to_i
    @saque = caixa.retornaSaque @valor_sacado
  end
end
