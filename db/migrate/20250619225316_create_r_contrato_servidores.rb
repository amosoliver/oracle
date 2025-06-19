class CreateRContratoServidores < ActiveRecord::Migration[7.2]
  def change
    create_table :r_contrato_servidores do |t|
      t.string :matricula
      t.references :g_pessoa, null: false, foreign_key: true
      t.references :r_cargo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
