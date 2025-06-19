class REstruturaOrganizacional < ApplicationRecord
  belongs_to :r_organizacional
  belongs_to :i_ambiente_predial


  def self.ransackable_associations(auth_object = nil)
    ["r_tipo_organizacional"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["descricao", "i_ambiente_predial_id", "r_organizacional_id"]
  end
end
