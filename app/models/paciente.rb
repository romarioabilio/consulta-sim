class Paciente < ApplicationRecord
  has_one :endereco, dependent: :destroy
  accepts_nested_attributes_for :endereco, allow_destroy: true
  has_many :consultums , dependent: :destroy
  has_many :medicos, through: :consultums

  validates :nome_completo, presence: true , length: {minimum: 3} ,length: {maximum: 100}
  validates :data_nascimento, presence: true
  validate :data_de_nascimento_valida
  validates :cpf, presence: true, uniqueness: true
  validates :cpf, format: { with: /\A\d{11}\z/, message: "deve conter 11 dígitos numéricos" }
  validates :cpf, format: { with: /\A[0-9]+\z/, message: "deve conter apenas números" }
  validates :email, presence: true , length: {minimum: 5}
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "não é um formato válido" }

  def data_de_nascimento_valida
    if data_nascimento.present? && data_nascimento > Date.today
      errors.add(:data_nascimento,"é inválida !")
    end
  end
end
