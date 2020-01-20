class Devi < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :telephone, presence: true
  validates :service_demande, presence: true
end
