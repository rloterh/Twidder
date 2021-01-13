require 'rails_helper'

RSpec.describe "opinions/edit", type: :view do
  before(:each) do
    @opinion = assign(:opinion, Opinion.create!(
      authorId: 1,
      text: "MyText"
    ))
  end

  it "renders the edit opinion form" do
    render

    assert_select "form[action=?][method=?]", opinion_path(@opinion), "post" do

      assert_select "input[name=?]", "opinion[authorId]"

      assert_select "textarea[name=?]", "opinion[text]"
    end
  end
end
