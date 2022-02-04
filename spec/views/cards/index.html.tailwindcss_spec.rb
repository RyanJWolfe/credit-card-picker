require 'rails_helper'

RSpec.describe "cards/index", type: :view do
  before(:each) do
    assign(:cards, [
      Card.create!(
        issuer: "Issuer",
        card_name: "Card Name"
      ),
      Card.create!(
        issuer: "Issuer",
        card_name: "Card Name"
      )
    ])
  end

  it "renders a list of cards" do
    render
    assert_select "tr>td", text: "Issuer".to_s, count: 2
    assert_select "tr>td", text: "Card Name".to_s, count: 2
  end
end
