class CaixaService
  def initialize
    @cedulas = [100, 50, 20, 10, 5]
  end

  def retornaSaque(valorTotalSaque)
    saque = []

    @cedulas.each do |valorCedula|
      quantidadeCedula = (valorTotalSaque / valorCedula).to_i;

      if (quantidadeCedula > 0)
        saque << Saque.new(quantidadeCedula, valorCedula)
        valorTotalSaque -= (quantidadeCedula * valorCedula)
      end
    end

    saque
	end
end
