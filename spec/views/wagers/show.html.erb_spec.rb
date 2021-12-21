require 'rails_helper'

RSpec.describe "wagers/show", type: :view do
  before(:each) do
    @wager = assign(:wager, Wager.create!(
      :challenge => nil,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
