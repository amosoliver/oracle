class CreateREstruturasOrganizacionais < ActiveRecord::Migration[7.2]
  def change
    create_table :r_estruturas_organizacionais do |t|
      t.references :i_ambiente_predial, null: false, foreign_key: true
      t.references :r_organizacional, null: false, foreign_key: true

      t.timestamps
    end
  end
end
