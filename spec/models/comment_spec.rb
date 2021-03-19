require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'Comments Validations, Maximum size, length and presence' do
    let(:user) { User.create(fullname: 'userx usery', username: 'userxy', photo: '', cover_img: '') }
    let(:opinion) { Opinion.create(author_id: user.id, text: 'twid from userxy') }

    subject { opinion.comments.build(commentor_id: user.id, content: 'New comment by userxy') }

    it 'Maximun size of content is 50' do
      expect(subject).to be_valid
    end

    it { expect(subject).to validate_presence_of(:content) }

    it {
      expect(subject).to validate_length_of(:content).is_at_most(50)
        .with_message(/50 characters maximum allowed./)
    }
  end

  context 'Association' do
    it { expect(subject).to belong_to(:commentor) }
    it { expect(subject).to belong_to(:opinion) }
  end
end
