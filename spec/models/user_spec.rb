require 'rails_helper'

RSpec.describe User, type: :model do
  context 'User Associations, with opinion, comments, likes and followers' do
    it { expect(subject).to validate_presence_of(:fullname) }
    it { expect(subject).to validate_presence_of(:username) }
    it { expect(subject).to validate_length_of(:username).is_at_least(3) }
    it { expect(subject).to validate_length_of(:fullname).is_at_least(3) }
  end
  
  context 'User Associations, with opinion, comments, likes and followers' do
    it { expect(subject).to have_many(:opinions) }
    it { expect(subject).to have_many(:comments) }
    it { expect(subject).to have_many(:likes).dependent(:destroy) }
    it { expect(subject).to have_many(:followers).with_foreign_key(:followed_id).class_name('Following')  }
    it { expect(subject).to have_many(:followed).with_foreign_key(:follower_id).class_name('Following') }
  end
end
