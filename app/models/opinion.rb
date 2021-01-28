class Opinion < ApplicationRecord
  belongs_to :Author, foreign_key: 'author_id', class_name: 'User'
  validates :text, presence: true, length: { minimum: 3, maximum: 300 }
end
