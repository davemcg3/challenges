require 'rails_helper'

RSpec.describe "available_taunts/edit", type: :view do
  before(:each) do
    @available_taunt = assign(:available_taunt, AvailableTaunt.create!(
      :tauntable => nil
    ))
  end

  it "renders the edit available_taunt form" do
    render

    assert_select "form[action=?][method=?]", available_taunt_path(@available_taunt), "post" do

      assert_select "input[name=?]", "available_taunt[tauntable_id]"
    end
  end
end
