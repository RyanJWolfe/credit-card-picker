require 'rails_helper'

RSpec.describe "cards/edit", type: :view do
  before(:each) do
    @card = assign(:card, Card.create!(
      issuer: "MyString",
      card_name: "MyString"
    ))
  end

  it "renders the edit card form" do
    render

    assert_select "form[action=?][method=?]", card_path(@card), "post" do

      assert_select "input[name=?]", "card[issuer]"

      assert_select "input[name=?]", "card[card_name]"
    end
  end
end
