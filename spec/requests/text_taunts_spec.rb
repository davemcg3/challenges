require 'rails_helper'

RSpec.describe "TextTaunts", type: :request do
  describe "GET /text_taunts" do
    it "works! (now write some real specs)" do
      get text_taunts_path
      expect(response).to have_http_status(200)
    end
  end
end
