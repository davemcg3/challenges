require 'rails_helper'

RSpec.describe "given_taunts/index", type: :view do
  before(:each) do
    assign(:given_taunts, [
      GivenTaunt.create!(
        :available_taunt => nil,
        :profile => nil
      ),
      GivenTaunt.create!(
        :available_taunt => nil,
        :profile => nil
      )
    ])
  end

  it "renders a list of given_taunts" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
