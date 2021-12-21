require 'rails_helper'

RSpec.describe "text_taunts/index", type: :view do
  before(:each) do
    assign(:text_taunts, [
      TextTaunt.create!(
        :description => "MyText"
      ),
      TextTaunt.create!(
        :description => "MyText"
      )
    ])
  end

  it "renders a list of text_taunts" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
