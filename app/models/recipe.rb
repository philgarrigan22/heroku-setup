class Recipe < ApplicationRecord
  has_many :meals
  has_many :ingredient, through: :meals
end
