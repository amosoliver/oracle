class IAmbientePredial < ApplicationRecord
  belongs_to :i_predio
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "descricao", "i_predio_id", "id", "updated_at"]
  end

end
