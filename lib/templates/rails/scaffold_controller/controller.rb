class <%= controller_class_name %>Controller < ApplicationController

  before_action :set_<%= singular_table_name %>, only: %i[ show edit update destroy ]

  def index
    @q = <%= class_name %>.ransack(params[:q])
    @<%= plural_table_name %> = @q.result
  end

  def new
    @<%= singular_table_name %> = <%= class_name %>.new
  end

  def edit
  end

  def create
    @<%= singular_table_name %> = <%= class_name %>.new(<%= singular_table_name %>_params)

    if @<%= singular_table_name %>.save
      redirect_to <%= plural_table_name %>_path, notice: "Registro cadastrado com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @<%= singular_table_name %>.update(<%= singular_table_name %>_params)
      redirect_to <%= plural_table_name %>_path, notice: "Registro atualizado com sucesso!", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @<%= singular_table_name %>.destroy
      redirect_to <%= plural_table_name %>_url, notice: "Registro foi marcado como excluído."
    else
      redirect_to <%= plural_table_name %>_url, alert: @<%= singular_table_name %>.errors.full_messages.to_sentence.presence  || "Ainda existem dependentes desse registro."
    end   
  end

  private

  def set_<%= singular_table_name %>
    @<%= singular_table_name %> = <%= class_name %>.find(params[:id])
  end

  def <%= singular_table_name %>_params
    params.require(:<%= singular_table_name %>).permit(<%= class_name %>.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }.map(&:to_sym))    
  end
end
