require 'rails_helper'

RSpec.describe "followings/show", type: :view do
  before(:each) do
    @following = assign(:following, Following.create!(
      following_id: 2,
      followed_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
