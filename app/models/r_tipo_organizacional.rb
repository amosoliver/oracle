class RTipoOrganizacional < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "descricao", "id", "updated_at"]
      end
end
