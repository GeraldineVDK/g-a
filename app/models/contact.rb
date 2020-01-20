class Contact < ApplicationRecord
  validates :nom, presence: true
  validates :prenom, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :service, presence: true, inclusion: { in: ["Bureaux & Locaux Professionnels", "Copropriétés & Espaces Communs", "Interventions Spécialisées", "Entretien Espaces Verts"]}
end
