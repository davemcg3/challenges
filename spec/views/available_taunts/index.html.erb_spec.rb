require 'rails_helper'

RSpec.describe "available_taunts/index", type: :view do
  before(:each) do
    assign(:available_taunts, [
      AvailableTaunt.create!(
        :tauntable => nil
      ),
      AvailableTaunt.create!(
        :tauntable => nil
      )
    ])
  end

  it "renders a list of available_taunts" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
