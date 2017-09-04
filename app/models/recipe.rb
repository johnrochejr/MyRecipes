class Recipe < ApplicationRecord
  include ImageUploader[:image]

  has_many :ingredients
  has_many :steps
end
