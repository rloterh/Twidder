require 'rails_helper'

RSpec.describe "followings/index", type: :view do
  before(:each) do
    assign(:followings, [
      Following.create!(
        following_id: 2,
        followed_id: 3
      ),
      Following.create!(
        following_id: 2,
        followed_id: 3
      )
    ])
  end

  it "renders a list of followings" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
