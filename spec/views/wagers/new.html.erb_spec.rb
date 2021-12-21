require 'rails_helper'

RSpec.describe "wagers/new", type: :view do
  before(:each) do
    assign(:wager, Wager.new(
      :challenge => nil,
      :description => "MyText"
    ))
  end

  it "renders new wager form" do
    render

    assert_select "form[action=?][method=?]", wagers_path, "post" do

      assert_select "input[name=?]", "wager[challenge_id]"

      assert_select "textarea[name=?]", "wager[description]"
    end
  end
end
