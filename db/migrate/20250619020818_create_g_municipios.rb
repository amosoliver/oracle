class CreateGMunicipios < ActiveRecord::Migration[7.2]
  def change
    create_table :g_municipios do |t|
      t.string :descricao
      t.references :g_estado, null: false, foreign_key: true

      t.timestamps
    end
  end
end
