class RTiposOrganizacionaisController < ApplicationController

  before_action :set_r_tipo_organizacional, only: %i[ show edit update destroy ]

  def index
    @q = RTipoOrganizacional.ransack(params[:q])
    @r_tipos_organizacionais = @q.result
  end

  def new
    @r_tipo_organizacional = RTipoOrganizacional.new
  end

  def edit
  end

  def create
    @r_tipo_organizacional = RTipoOrganizacional.new(r_tipo_organizacional_params)

    if @r_tipo_organizacional.save
      redirect_to r_tipos_organizacionais_path, notice: "Registro cadastrado com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @r_tipo_organizacional.update(r_tipo_organizacional_params)
      redirect_to r_tipos_organizacionais_path, notice: "Registro atualizado com sucesso!", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @r_tipo_organizacional.destroy
      redirect_to r_tipos_organizacionais_url, notice: "Registro foi marcado como excluído."
    else
      redirect_to r_tipos_organizacionais_url, alert: @r_tipo_organizacional.errors.full_messages.to_sentence.presence  || "Ainda existem dependentes desse registro."
    end   
  end

  private

  def set_r_tipo_organizacional
    @r_tipo_organizacional = RTipoOrganizacional.find(params[:id])
  end

  def r_tipo_organizacional_params
    params.require(:r_tipo_organizacional).permit(RTipoOrganizacional.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }.map(&:to_sym))    
  end
end
