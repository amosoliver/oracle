class RCargosController < ApplicationController

  before_action :set_r_cargo, only: %i[ show edit update destroy ]

  def index
    @q = RCargo.ransack(params[:q])
    @r_cargos = @q.result
  end

  def new
    @r_cargo = RCargo.new
  end

  def edit
  end

  def create
    @r_cargo = RCargo.new(r_cargo_params)

    if @r_cargo.save
      redirect_to r_cargos_path, notice: "Registro cadastrado com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @r_cargo.update(r_cargo_params)
      redirect_to r_cargos_path, notice: "Registro atualizado com sucesso!", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @r_cargo.destroy
      redirect_to r_cargos_url, notice: "Registro foi marcado como excluído."
    else
      redirect_to r_cargos_url, alert: @r_cargo.errors.full_messages.to_sentence.presence  || "Ainda existem dependentes desse registro."
    end   
  end

  private

  def set_r_cargo
    @r_cargo = RCargo.find(params[:id])
  end

  def r_cargo_params
    params.require(:r_cargo).permit(RCargo.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }.map(&:to_sym))    
  end
end
