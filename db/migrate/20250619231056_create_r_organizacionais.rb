class CreateROrganizacionais < ActiveRecord::Migration[7.2]
  def change
    create_table :r_organizacionais do |t|
      t.string :descricao
      t.references :r_tipo_organizacional, null: false, foreign_key: true

      t.timestamps
    end
  end
end
