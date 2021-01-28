require 'rails_helper'

RSpec.describe "followings/edit", type: :view do
  before(:each) do
    @following = assign(:following, Following.create!(
      following_id: 1,
      followed_id: 1
    ))
  end

  it "renders the edit following form" do
    render

    assert_select "form[action=?][method=?]", following_path(@following), "post" do

      assert_select "input[name=?]", "following[following_id]"

      assert_select "input[name=?]", "following[followed_id]"
    end
  end
end
