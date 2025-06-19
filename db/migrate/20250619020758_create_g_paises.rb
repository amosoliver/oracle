class CreateGPaises < ActiveRecord::Migration[7.2]
  def change
    create_table :g_paises do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
