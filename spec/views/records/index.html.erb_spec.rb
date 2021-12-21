require 'rails_helper'

RSpec.describe "records/index", type: :view do
  before(:each) do
    assign(:records, [
      Record.create!(
        :challenge => nil,
        :data => "MyText"
      ),
      Record.create!(
        :challenge => nil,
        :data => "MyText"
      )
    ])
  end

  it "renders a list of records" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
