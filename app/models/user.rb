class User < ApplicationRecord
  has_many :opinions, foreign_key: 'author_id', class_name: 'Opinion'
  has_many :followed, foreign_key: 'follower_id', class_name: 'Following'
  has_many :followers, foreign_key: 'followed_id', class_name: 'Following'
  has_many :comments, foreign_key: 'commentor_id', class_name: 'Comment'
  has_many :likes, dependent: :destroy

  before_save { self.username = self.username.downcase }
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 50 }
  validates :fullname, presence: true, length: { minimum: 3, maximum: 80 }

  def self.user_followers(id, curr_user_id)
    Following.where(followed_id: id).where.not(follower_id: curr_user_id).order(created_at: :desc).limit(5)
  end

  def self.all_users(user_id)
    User.where('id != ?', user_id)
  end
end
