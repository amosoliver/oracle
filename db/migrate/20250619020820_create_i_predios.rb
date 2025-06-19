class CreateIPredios < ActiveRecord::Migration[7.2]
  def change
    create_table :i_predios do |t|
      t.string :nome_fantasia
      t.string :cnpj
      t.references :g_municipio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
