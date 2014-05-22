class CidadesController < ApplicationController
  before_action :find_cidade, only: [:show, :edit, :update, :destroy]

  def index
    @cidades = Cidade.all
  end

  def new
    @cidade = Cidade.new
  end

  def show
  end

  def create
    @cidade = Cidade.new(cidade_params)

    if @cidade.save
      redirect_to @cidade, notice: 'Cidade criada com sucesso.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @cidade.update(cidade_params)
      redirect_to @cidade, notice: "Alterado com sucesso."
    else
      render :edit
    end
  end

  def destroy
    @cidade.destroy
    redirect_to cidades_url, notice: "Removido com sucesso."
  end

  private
  def find_cidade
    @cidade = Cidade.find(params[:id])
  end

  def cidade_params
    params.require(:cidade).permit(:nome)
  end
end
