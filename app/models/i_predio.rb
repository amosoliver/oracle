class IPredio < ApplicationRecord
  belongs_to :g_municipio
  has_many :i_ambientes_prediais, dependent: :destroy
  
  def self.ransackable_attributes(auth_object = nil)
    ["cnpj", "created_at", "g_municipio_id", "id", "nome_fantasia", "updated_at"]
  end
end
