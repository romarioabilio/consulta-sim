class Endereco < ApplicationRecord
  belongs_to :paciente

  validates :cep, :cidade, :bairro, :logradouro, :complemento, presence: true
  validates :cep, length: { is: 8 ,message:"inválido"},numericality: { only_integer: true }
  validates :cidade, length: { in: 3..20 }, format: { with: /\A[a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+\z/}
  validates :bairro, length: {in: 3..20}, format: { with: /\A[a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+\z/}
  validates :logradouro, length: {in:3..50}, format: { with: /\A[a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+\z/}
  validates :complemento, length: {in: 3..30}, format: { with: /\A[a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+\z/}
end
