class RLotacaoOrganizacional < ApplicationRecord
  belongs_to :r_contrato_servidor
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "r_contrato_servidor_id", "r_estrutura_organizacional", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["r_contrato_servidor"]
  end
  
end
