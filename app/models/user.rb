class User < ApplicationRecord
  has_many :opinions, foreign_key: 'authorId', class_name: 'Opinion'
end
