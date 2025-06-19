class ROrganizacionaisController < ApplicationController

  before_action :set_r_organizacional, only: %i[ show edit update destroy ]

  def index
    @q = ROrganizacional.ransack(params[:q])
    @r_organizacionais = @q.result
  end

  def new
    @r_organizacional = ROrganizacional.new
  end

  def edit
  end

  def create
    @r_organizacional = ROrganizacional.new(r_organizacional_params)

    if @r_organizacional.save
      redirect_to r_organizacionais_path, notice: "Registro cadastrado com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @r_organizacional.update(r_organizacional_params)
      redirect_to r_organizacionais_path, notice: "Registro atualizado com sucesso!", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @r_organizacional.destroy
      redirect_to r_organizacionais_url, notice: "Registro foi marcado como excluído."
    else
      redirect_to r_organizacionais_url, alert: @r_organizacional.errors.full_messages.to_sentence.presence  || "Ainda existem dependentes desse registro."
    end   
  end

  private

  def set_r_organizacional
    @r_organizacional = ROrganizacional.find(params[:id])
  end

  def r_organizacional_params
    params.require(:r_organizacional).permit(ROrganizacional.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }.map(&:to_sym))    
  end
end
