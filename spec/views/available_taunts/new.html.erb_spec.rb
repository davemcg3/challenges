require 'rails_helper'

RSpec.describe "available_taunts/new", type: :view do
  before(:each) do
    assign(:available_taunt, AvailableTaunt.new(
      :tauntable => nil
    ))
  end

  it "renders new available_taunt form" do
    render

    assert_select "form[action=?][method=?]", available_taunts_path, "post" do

      assert_select "input[name=?]", "available_taunt[tauntable_id]"
    end
  end
end
