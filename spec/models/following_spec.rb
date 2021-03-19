require 'rails_helper'

RSpec.describe Following, type: :model do
  context 'ValidationUniqueness' do
    it { expect(subject).to validate_presence_of(:followed_id) }
    it { expect(subject).to validate_presence_of(:follower_id) }
  end

  context 'Associations' do
    it { should belong_to(:Follower) }
    it { should belong_to(:Followed) }
  end
end
