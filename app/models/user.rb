class User < ApplicationRecord
  has_many :opinions, foreign_key: 'authorId', class_name: 'Opinion'

  before_save { self.username = self.username.downcase }
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 45 }
  validates :fullname, presence: true, length: { minimum: 3, maximum: 80 }

  def self.all_users(user_id)
    User.where('id != ?', user_id)
  end
end
