json.extract! g_pessoa, :id, :nome, :cpf, :created_at, :updated_at
json.url g_pessoa_url(g_pessoa, format: :json)
