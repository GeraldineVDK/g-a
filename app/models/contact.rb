class Contact < ApplicationRecord
  # attr_writer  :nom, :prenom, :email, :phone, :service

  validates :nom, presence: true
  validates :prenom, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :status, inclusion: { in: ["Done", "Pending", "Closed"]}
  validates :service, inclusion: { in: ["Bureaux & Locaux Professionnels", "Copropriétés & Espaces Communs", "Interventions Spécialisées", "Entretien Espaces Verts"]}
end
