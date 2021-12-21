require 'rails_helper'

RSpec.describe "given_taunts/edit", type: :view do
  before(:each) do
    @given_taunt = assign(:given_taunt, GivenTaunt.create!(
      :available_taunt => nil,
      :profile => nil
    ))
  end

  it "renders the edit given_taunt form" do
    render

    assert_select "form[action=?][method=?]", given_taunt_path(@given_taunt), "post" do

      assert_select "input[name=?]", "given_taunt[available_taunt_id]"

      assert_select "input[name=?]", "given_taunt[profile_id]"
    end
  end
end
