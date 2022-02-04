require 'rails_helper'

RSpec.describe "cards/show", type: :view do
  before(:each) do
    @card = assign(:card, Card.create!(
      issuer: "Issuer",
      card_name: "Card Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Issuer/)
    expect(rendered).to match(/Card Name/)
  end
end
