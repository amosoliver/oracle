class IAmbientesPrediaisController < ApplicationController
  before_action :set_i_predio

  before_action :set_i_ambiente_predial, only: %i[ show edit update destroy ]

  def index
    @q = IAmbientePredial.where(i_predio_id: @i_predio.id).ransack(params[:q])
    @i_ambientes_prediais = @q.result
  end
  

  def new
    @i_ambiente_predial = @i_predio.i_ambientes_prediais.new
  end
  
  def create
    @i_ambiente_predial = @i_predio.i_ambientes_prediais.new(i_ambiente_predial_params)
  
    if @i_ambiente_predial.save
      redirect_to i_predio_path(@i_predio), notice: "Registro cadastrado com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end
  

  def edit
  end

  def update
    if @i_ambiente_predial.update(i_ambiente_predial_params)
      redirect_to i_ambientes_prediais_path, notice: "Registro atualizado com sucesso!", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @i_ambiente_predial.destroy
      redirect_to i_ambientes_prediais_url, notice: "Registro foi marcado como excluído."
    else
      redirect_to i_ambientes_prediais_url, alert: @i_ambiente_predial.errors.full_messages.to_sentence.presence  || "Ainda existem dependentes desse registro."
    end   
  end

  private

  def set_i_predio
    @i_predio = IPredio.find(params[:i_predio_id])
  end
  
  def set_i_ambiente_predial
    @i_ambiente_predial = IAmbientePredial.find(params[:id])
  end

  def i_ambiente_predial_params
    params.require(:i_ambiente_predial).permit(IAmbientePredial.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }.map(&:to_sym))    
  end
end
