require 'rails_helper'

RSpec.describe "text_taunts/edit", type: :view do
  before(:each) do
    @text_taunt = assign(:text_taunt, TextTaunt.create!(
      :description => "MyText"
    ))
  end

  it "renders the edit text_taunt form" do
    render

    assert_select "form[action=?][method=?]", text_taunt_path(@text_taunt), "post" do

      assert_select "textarea[name=?]", "text_taunt[description]"
    end
  end
end
