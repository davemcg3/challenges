require 'rails_helper'

RSpec.describe "available_taunts/show", type: :view do
  before(:each) do
    @available_taunt = assign(:available_taunt, AvailableTaunt.create!(
      :tauntable => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
