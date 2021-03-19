require 'rails_helper'

feature 'Like | Dislike' do
  before :each do
    @user = User.create(fullname: 'userxy abc', username: 'user@xy')
    Opinion.create(author_id: @user.id, text: 'At morning gymnastic lesson')
  end

  scenario 'Like' do
    like_opinion 'user@xy'
    expect(page).to have_content('1 like')
  end

  scenario 'Dislike' do
    dislike_opinion 'user@xy'
    expect(page).to_not have_content('1 like')
  end

  def like_opinion(username)
    visit '/tlogin'
    fill_in 'session[username]', with: username
    click_on 'Log in'
    fill_in 'opinion[text]', with: 'Hicking at peeky mountains\n'
    click_on 'like!'
  end

  def dislike_opinion(username)
    visit '/tlogin'
    fill_in 'session[username]', with: username
    click_on 'Log in'
    fill_in 'opinion[text]', with: 'At ballogreen camping site\n'
    click_on 'like!'
    click_on 'dislike!'
  end
end
