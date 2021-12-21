require 'rails_helper'

RSpec.describe "wagers/index", type: :view do
  before(:each) do
    assign(:wagers, [
      Wager.create!(
        :challenge => nil,
        :description => "MyText"
      ),
      Wager.create!(
        :challenge => nil,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of wagers" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
