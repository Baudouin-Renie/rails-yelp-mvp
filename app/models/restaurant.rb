class Restaurant < ApplicationRecord
  CATEGORIES = ['Chinese', 'Italian', 'Japanese', 'French', 'Belgian']

  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, uniqueness: true, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
