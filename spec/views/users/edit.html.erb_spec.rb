require 'rails_helper'

RSpec.describe 'users/edit', type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
                            fullname: 'MyText',
                            username: 'MyText'
                          ))
  end

  it 'renders the edit user form' do
    render

    assert_select 'form[action=?][method=?]', user_path(@user), 'post' do
      assert_select 'textarea[name=?]', 'user[fullname]'

      assert_select 'textarea[name=?]', 'user[username]'
    end
  end
end
