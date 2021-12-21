require 'rails_helper'

RSpec.describe "records/new", type: :view do
  before(:each) do
    assign(:record, Record.new(
      :challenge => nil,
      :data => "MyText"
    ))
  end

  it "renders new record form" do
    render

    assert_select "form[action=?][method=?]", records_path, "post" do

      assert_select "input[name=?]", "record[challenge_id]"

      assert_select "textarea[name=?]", "record[data]"
    end
  end
end
