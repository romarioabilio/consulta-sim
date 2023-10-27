class Medico < ApplicationRecord
  has_many :consultums, dependent: :destroy
  has_many :pacientes, through: :consultums
end
