class ROrganizacional < ApplicationRecord
  belongs_to :r_tipo_organizacional
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "descricao", "id", "r_tipo_organizacional_id", "updated_at"]
  end
end
