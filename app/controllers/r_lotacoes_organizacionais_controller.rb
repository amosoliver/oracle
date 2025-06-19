class RLotacoesOrganizacionaisController < ApplicationController

  before_action :set_r_lotacao_organizacional, only: %i[ show edit update destroy ]

  def index
    @q = RLotacaoOrganizacional.ransack(params[:q])
    @r_lotacoes_organizacionais = @q.result
  end

  def new
    @r_lotacao_organizacional = RLotacaoOrganizacional.new
  end

  def edit
  end

  def create
    @r_lotacao_organizacional = RLotacaoOrganizacional.new(r_lotacao_organizacional_params)

    if @r_lotacao_organizacional.save
      redirect_to r_lotacoes_organizacionais_path, notice: "Registro cadastrado com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @r_lotacao_organizacional.update(r_lotacao_organizacional_params)
      redirect_to r_lotacoes_organizacionais_path, notice: "Registro atualizado com sucesso!", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @r_lotacao_organizacional.destroy
      redirect_to r_lotacoes_organizacionais_url, notice: "Registro foi marcado como excluído."
    else
      redirect_to r_lotacoes_organizacionais_url, alert: @r_lotacao_organizacional.errors.full_messages.to_sentence.presence  || "Ainda existem dependentes desse registro."
    end   
  end

  private

  def set_r_lotacao_organizacional
    @r_lotacao_organizacional = RLotacaoOrganizacional.find(params[:id])
  end

  def r_lotacao_organizacional_params
    params.require(:r_lotacao_organizacional).permit(RLotacaoOrganizacional.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }.map(&:to_sym))    
  end
end
