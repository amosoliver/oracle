class GPessoa < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        ["cpf", "created_at", "id", "nome", "updated_at"]
      end
    
end
