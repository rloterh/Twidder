require 'rails_helper'

RSpec.describe "likes/show", type: :view do
  before(:each) do
    @like = assign(:like, Like.create!(
      user_id: 2,
      opinion_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
