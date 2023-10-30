class Consultum < ApplicationRecord
  belongs_to :paciente
  belongs_to :medico

  validates :data, :horario, presence: true
  validate :data_da_consulta_validar
  validate :horario_correto
  validates_associated :medico
  validates_associated :paciente

  def data_da_consulta_validar
    if data.present? && data < Date.today
      errors.add(:data,"é inválida !")
    end
  end
  def horario_correto
    if %w[08:00 08:30 09:00 09:30 10:00 10:30 11:00 11:30 14:00 14:30 15:00 15:30 16:00 16:30 17:00 17:30].exclude? horario
      errors.add(:horario, "é inválido")
    end
  end

end
