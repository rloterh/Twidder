require 'rails_helper'

feature 'Create Opinion' do
  before :each do
    @user = User.create(fullname: 'userxy abc', username: 'user@xy')
    Opinion.create(author_id: @user.id, text: 'At morning gymnastic lesson')
  end

  scenario 'CreateSuccess' do
    twid_success 'user@xy'
    expect(page).to have_content('1 new twid')
  end

  scenario 'CreateFail' do
    twid_fail 'user@xy'
    expect(page).to_not have_content('Text is too short (minimum is 3 characters)')
  end

  def twid_success(username)
    visit '/tlogin'
    fill_in 'session[username]', with: username
    click_on 'Log in'
    fill_in 'opinion[text]', with: 'Hicking at peeky mountains\n'
  end

  def twid_fail(username)
    visit '/tlogin'
    fill_in 'session[username]', with: username
    click_on 'Log in'
    fill_in 'opinion[text]', with: ''
  end
end
