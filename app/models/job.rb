class Job < ApplicationRecord
  validates :title, presence: true, length: { maximum: 120 }
  validates :category, presence: true
  validates :salary, presence: true,
                   numericality: { only_integer: true, greater_than: 0 }
end
