class Recipe < ApplicationRecord

  includes ImageUploader[:image]

  has_many :ingredients
  has_many :steps
end
