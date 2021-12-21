require 'rails_helper'

RSpec.describe "text_taunts/new", type: :view do
  before(:each) do
    assign(:text_taunt, TextTaunt.new(
      :description => "MyText"
    ))
  end

  it "renders new text_taunt form" do
    render

    assert_select "form[action=?][method=?]", text_taunts_path, "post" do

      assert_select "textarea[name=?]", "text_taunt[description]"
    end
  end
end
