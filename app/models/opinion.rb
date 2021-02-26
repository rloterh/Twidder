class Opinion < ApplicationRecord
  validates :text, presence: true, length: { minimum: 3, maximum: 100 }
  belongs_to :author, foreign_key: 'author_id', class_name: 'User'
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
end
