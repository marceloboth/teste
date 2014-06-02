class EstadosController < ApplicationController
  def index

  end

  def new
    @estado = Estado.new
  end

  def create
    @estado = Estado.new(estado_params)

    if @estado.save
      redirect_to @estado, notice: "Estado foi criado com sucesso."
    else
      flash[:alert] = "estado não foi criado."
      render "new"
    end
  end

  private
    def estado_params
      params.require(:estado).permit(:nome, :sigla)
    end
end
