class CreateRTiposOrganizacionais < ActiveRecord::Migration[7.2]
  def change
    create_table :r_tipos_organizacionais do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
