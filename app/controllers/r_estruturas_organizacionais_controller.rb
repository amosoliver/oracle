class REstruturasOrganizacionaisController < ApplicationController

  before_action :set_r_estrutura_organizacional, only: %i[ show edit update destroy ]

  def index
    @q = REstruturaOrganizacional.ransack(params[:q])
    @r_estruturas_organizacionais = @q.result
  end

  def new
    @r_estrutura_organizacional = REstruturaOrganizacional.new
  end

  def edit
  end

  def create
    @r_estrutura_organizacional = REstruturaOrganizacional.new(r_estrutura_organizacional_params)

    if @r_estrutura_organizacional.save
      redirect_to r_estruturas_organizacionais_path, notice: "Registro cadastrado com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @r_estrutura_organizacional.update(r_estrutura_organizacional_params)
      redirect_to r_estruturas_organizacionais_path, notice: "Registro atualizado com sucesso!", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @r_estrutura_organizacional.destroy
      redirect_to r_estruturas_organizacionais_url, notice: "Registro foi marcado como excluído."
    else
      redirect_to r_estruturas_organizacionais_url, alert: @r_estrutura_organizacional.errors.full_messages.to_sentence.presence  || "Ainda existem dependentes desse registro."
    end   
  end

  private

  def set_r_estrutura_organizacional
    @r_estrutura_organizacional = REstruturaOrganizacional.find(params[:id])
  end

  def r_estrutura_organizacional_params
    params.require(:r_estrutura_organizacional).permit(REstruturaOrganizacional.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }.map(&:to_sym))    
  end
end
