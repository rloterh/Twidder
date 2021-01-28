require 'rails_helper'

RSpec.describe "followings/new", type: :view do
  before(:each) do
    assign(:following, Following.new(
      following_id: 1,
      followed_id: 1
    ))
  end

  it "renders new following form" do
    render

    assert_select "form[action=?][method=?]", followings_path, "post" do

      assert_select "input[name=?]", "following[following_id]"

      assert_select "input[name=?]", "following[followed_id]"
    end
  end
end
