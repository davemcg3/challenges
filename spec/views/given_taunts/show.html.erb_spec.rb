require 'rails_helper'

RSpec.describe "given_taunts/show", type: :view do
  before(:each) do
    @given_taunt = assign(:given_taunt, GivenTaunt.create!(
      :available_taunt => nil,
      :profile => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
