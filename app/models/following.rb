class Following < ApplicationRecord
  belongs_to :Follower, foreign_key: 'follower_id', class_name: 'User'
  belongs_to :Followed, foreign_key: 'followed_id', class_name: 'User'

  validates :follower_id, presence: true
  validates :followed_id, presence: true

  def self.unfollow(sender_id, receiver_id)
    Following.where(follower_id: sender_id).where(followed_id: receiver_id)[0]
  end
end
