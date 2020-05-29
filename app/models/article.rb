class Article < ApplicationRecord
  # has_one_attached :banana
  # has_one_attached :pdf
  # has_one_attached :document
  # This can be anything
  has_many_attached :photos
end
