class CreateGEstados < ActiveRecord::Migration[7.2]
  def change
    create_table :g_estados do |t|
      t.string :descricao
      t.references :g_pais, null: false, foreign_key: true

      t.timestamps
    end
  end
end
