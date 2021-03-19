require 'rails_helper'

RSpec.describe Like, type: :model do
  context 'Validation uniqueness' do
    it { expect(subject).to validate_uniqueness_of(:user_id).scoped_to(:opinion_id)}
  end

  context 'Likes Associations, with user and post' do
    it { expect(subject).to belong_to(:user) }
    it { expect(subject).to belong_to(:opinion) }
  end
end
