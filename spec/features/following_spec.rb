require 'rails_helper'

feature 'Follow | Unfollow' do
  before :each do
    @user = User.create(fullname: 'userxy abc', username: 'user@xy')
    @user = User.create(fullname: 'userjk qrs', username: 'user@jk')
  end

  scenario 'Follow' do
    follow_user 'user@xy'
    expect(page).to have_css('#unfollow_path')
  end

  scenario 'Unfollow' do
    unfollow_user 'user@xy'
    expect(page).to have_css('#follow_path')
  end

  def follow_user(username)
    visit '/tlogin'
    fill_in 'session[username]', with: username
    click_on 'Log in'
    click_on 'userjk qrs'
    first(:css, '#follow_path').click
  end

  def unfollow_user(username)
    visit '/tlogin'
    fill_in 'session[username]', with: username
    click_on 'Log in'
    click_on 'userjk qrs'
    first(:css, '#follow_path').click
    first(:css, '#unfollow_path').click
  end
end
