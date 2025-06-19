class RContratoServidoresController < ApplicationController

  before_action :set_r_contrato_servidor, only: %i[ show edit update destroy ]

  def index
    @q = RContratoServidor.ransack(params[:q])
    @r_contrato_servidores = @q.result
  end

  def new
    @r_contrato_servidor = RContratoServidor.new
  end

  def edit
  end

  def create
    @r_contrato_servidor = RContratoServidor.new(r_contrato_servidor_params)

    if @r_contrato_servidor.save
      redirect_to r_contrato_servidores_path, notice: "Registro cadastrado com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @r_contrato_servidor.update(r_contrato_servidor_params)
      redirect_to r_contrato_servidores_path, notice: "Registro atualizado com sucesso!", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @r_contrato_servidor.destroy
      redirect_to r_contrato_servidores_url, notice: "Registro foi marcado como excluído."
    else
      redirect_to r_contrato_servidores_url, alert: @r_contrato_servidor.errors.full_messages.to_sentence.presence  || "Ainda existem dependentes desse registro."
    end   
  end

  private

  def set_r_contrato_servidor
    @r_contrato_servidor = RContratoServidor.find(params[:id])
  end

  def r_contrato_servidor_params
    params.require(:r_contrato_servidor).permit(RContratoServidor.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }.map(&:to_sym))    
  end
end
