class Review < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :writer, presence: true
  validates :rating, presence: true, inclusion: { in: ["1", "2", "3", "4", "5"]}
end
