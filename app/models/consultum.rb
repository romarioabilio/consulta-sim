class Consultum < ApplicationRecord
  belongs_to :paciente
  belongs_to :medico

  validates :data, :horario, presence: true
  validate :data_da_consulta_validar
  validates_associated :medico
  validates_associated :paciente

  def data_da_consulta_validar
    if data.present? && data < Date.today
      errors.add(:data_nascimento,"é inválida !")
    end
  end

end
