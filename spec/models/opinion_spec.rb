require 'rails_helper'

RSpec.describe Opinion, type: :model do
  let(:user) { User.create(fullname: 'userx usery', username: 'user42', photo: 'userx.jpg', cover_img: 'userx_cover.jpg') }

  before do
    Opinion.create(author_id: user.id, text: 'First Opinion by User42')
    Opinion.create(author_id: user.id, text: 'Second Opinion by User42 ')
    Opinion.create(author_id: user.id, text: 'Third Opinion by User42')
  end

  context 'Opinion Validations, length, presence and order' do
    it {
      expect(subject).to validate_length_of(:text).is_at_most(100)
        .with_message(/100 characters maximum allowed./)
    }
    it {
      expect(subject).to validate_presence_of(:text)
    }
    it { expect(Opinion.order(created_at: :desc).first).to eq(Opinion.last) }
  end

  context 'Opinion Associations, with comments and likes' do
    it { expect(subject).to belong_to :author }
    it { expect(subject).to have_many(:comments).dependent(:destroy) }
    it { expect(subject).to have_many(:likes).dependent(:destroy) }
  end
end
