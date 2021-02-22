class Comment < ApplicationRecord
  validates :content, presence: true, length: { maximum: 100, too_long: '100 characters maximum allowed.' }
  belongs_to :commentor, foreign_key: 'commentor_id', class_name: 'User'
  belongs_to :opinion
end
