class RContratoServidor < ApplicationRecord
  belongs_to :g_pessoa
  belongs_to :r_cargo
  has_many :r_lotacao_organizacional
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "g_pessoa_id", "id", "matricula", "r_cargo_id", "updated_at"]
  end
end
