class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :ingredients,  through: :doses, dependent: :destroy
  has_many :doses
end
