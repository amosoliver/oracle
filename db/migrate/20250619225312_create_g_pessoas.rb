class CreateGPessoas < ActiveRecord::Migration[7.2]
  def change
    create_table :g_pessoas do |t|
      t.string :nome
      t.string :cpf

      t.timestamps
    end
  end
end
