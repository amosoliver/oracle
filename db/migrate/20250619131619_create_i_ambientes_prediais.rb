class CreateIAmbientesPrediais < ActiveRecord::Migration[7.2]
  def change
    create_table :i_ambientes_prediais do |t|
      t.string :descricao
      t.references :i_predio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
