class Medico < ApplicationRecord
  has_many :consultums, dependent: :destroy
  has_many :pacientes, through: :consultums

  validates :nome_completo, presence: true , numericality: false , uniqueness: false
  validates :cpf, presence: true, uniqueness: true
  validates :cpf, format: { with: /\A\d{11}\z/, message: "O CPF deve conter 11 dígitos numéricos" }
  validates :cpf, format: { with: /\A[0-9]+\z/, message: "O CPF deve conter apenas números" }
  validates :email, presence: true , length: {minimum:5} , uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Não é um formato de e-mail válido" }
  validates :especialidade, presence: false ,uniqueness: false , numericality: false
  validates :crm, presence: true, uniqueness: true ,length: {minimum:5}
  validates :crm, format: { with: /\A[0-9]+\z/, message: "O CRM deve conter apenas números" }
end
