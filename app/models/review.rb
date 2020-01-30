class Review < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :writer, presence: true
  validates :rating, presence: true, inclusion: { in: (1..5) }
end
