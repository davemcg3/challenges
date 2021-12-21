require 'rails_helper'

RSpec.describe "given_taunts/new", type: :view do
  before(:each) do
    assign(:given_taunt, GivenTaunt.new(
      :available_taunt => nil,
      :profile => nil
    ))
  end

  it "renders new given_taunt form" do
    render

    assert_select "form[action=?][method=?]", given_taunts_path, "post" do

      assert_select "input[name=?]", "given_taunt[available_taunt_id]"

      assert_select "input[name=?]", "given_taunt[profile_id]"
    end
  end
end
