require 'rails_helper'

RSpec.describe "text_taunts/show", type: :view do
  before(:each) do
    @text_taunt = assign(:text_taunt, TextTaunt.create!(
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
