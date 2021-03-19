require 'rails_helper'

feature 'Visitor signs up/ Log in' do
  scenario 'ValidCredential' do
    sign_up_with 'user40', 'user40@m.com'
    expect(page).to have_content('Log in')
  end

  scenario 'NewSession' do
    log_in_with 'user40', 'user40@m.com'
    expect(page).to have_content('who to follow')
  end

  scenario 'InvalidUsername' do
    sign_up_with 'user40', 'invalid_email'
    expect(page).to have_content('Log in')
  end

  scenario 'BlankUsername' do
    sign_up_with 'user40123', ''
    expect(page).to have_content('Log in')
  end

  def sign_up_with(fullname, username)
    visit '/signup'
    fill_in 'user[fullname]', with: fullname
    fill_in 'user[username]', with: username
    click_button 'commit'
  end

  def log_in_with(fullname, username)
    visit '/signup'
    fill_in 'user[fullname]', with: fullname
    fill_in 'user[username]', with: username
    click_button 'commit'
    visit '/tlogin'
    fill_in 'session[username]', with: username
    click_button 'commit'
  end
end
