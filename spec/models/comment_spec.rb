require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'Comments Validations, Maximum size, length and presence' do
    let(:user) { User.create(fullname: 'userx userx', username: 'userx', photo: '', cover_img: '') }
    let(:opinion) { Opinion.create(commentor_id: author.id, text: 'Opinion from userx') }

    subject { opinion.comments.build(commentor_id: author.id, content: 'New post by userx') }

    it 'Maximun size of content is 100' do
      expect(subject).to be_valid
    end

    it { expect(subject).to validate_presence_of(:content) }

    it {
      expect(subject).to validate_length_of(:content).is_at_most(100)
        .with_message(/100 characters maximum allowed./)
    }
  end

  context 'Association' do
    it { expect(subject).to belong_to(:commentor) }
    it { expect(subject).to belong_to(:opinion) }
  end
end
