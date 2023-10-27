json.extract! consultum, :id, :data, :horario, :paciente_id, :medico_id, :created_at, :updated_at
json.url consultum_url(consultum, format: :json)
