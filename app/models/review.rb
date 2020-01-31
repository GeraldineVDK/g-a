class Review < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :writer, presence: true
  validates :status, inclusion: { in: ["Lu", "Pending", "Action à prendre"]}
  validates :rating, presence: true, inclusion: { in: (1..5) }
end
