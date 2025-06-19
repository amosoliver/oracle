class GMunicipiosController < ApplicationController

  before_action :set_g_municipio, only: %i[ show edit update destroy ]

  def index
    @q = GMunicipio.ransack(params[:q])
    @g_municipios = @q.result
  end

  def new
    @g_municipio = GMunicipio.new
  end

  def edit
  end

  def create
    @g_municipio = GMunicipio.new(g_municipio_params)

    if @g_municipio.save
      redirect_to g_municipios_path, notice: "Registro cadastrado com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @g_municipio.update(g_municipio_params)
      redirect_to g_municipios_path, notice: "Registro atualizado com sucesso!", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @g_municipio.destroy
      redirect_to g_municipios_url, notice: "Registro foi marcado como excluído."
    else
      redirect_to g_municipios_url, alert: @g_municipio.errors.full_messages.to_sentence.presence  || "Ainda existem dependentes desse registro."
    end   
  end

  private

  def set_g_municipio
    @g_municipio = GMunicipio.find(params[:id])
  end

  def g_municipio_params
    params.require(:g_municipio).permit(GMunicipio.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }.map(&:to_sym))    
  end
end
