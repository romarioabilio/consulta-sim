json.extract! endereco, :id, :paciente_id, :cep, :cidade, :bairro, :logradouro, :complemento, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
