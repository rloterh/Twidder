class Comment < ApplicationRecord
  validates :content, presence: true, length: { maximum: 50, too_long: '50 characters maximum allowed.' }
  belongs_to :commentor, foreign_key: 'commentor_id', class_name: 'User'
  belongs_to :opinion
end
