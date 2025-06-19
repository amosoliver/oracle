class CreateRLotacoesOrganizacionais < ActiveRecord::Migration[7.2]
  def change
    create_table :r_lotacoes_organizacionais do |t|
      t.references :r_contrato_servidor, null: false, foreign_key: true
      t.string :r_estrutura_organizacional

      t.timestamps
    end
  end
end
