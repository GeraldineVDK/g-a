class Devi < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :telephone, presence: true
  validates :status, inclusion: { in: ["Done", nil, "Closed"]}
  validates :service_demande, presence: true, inclusion: { in: ["Bureaux & Locaux Professionnels", "Copropriétés & Espaces Communs", "Interventions Spécialisées", "Entretien Espaces Verts"]}
end
