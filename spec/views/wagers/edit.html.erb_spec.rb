require 'rails_helper'

RSpec.describe "wagers/edit", type: :view do
  before(:each) do
    @wager = assign(:wager, Wager.create!(
      :challenge => nil,
      :description => "MyText"
    ))
  end

  it "renders the edit wager form" do
    render

    assert_select "form[action=?][method=?]", wager_path(@wager), "post" do

      assert_select "input[name=?]", "wager[challenge_id]"

      assert_select "textarea[name=?]", "wager[description]"
    end
  end
end
