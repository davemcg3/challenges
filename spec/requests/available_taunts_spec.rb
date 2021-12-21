require 'rails_helper'

RSpec.describe "AvailableTaunts", type: :request do
  describe "GET /available_taunts" do
    it "works! (now write some real specs)" do
      get available_taunts_path
      expect(response).to have_http_status(200)
    end
  end
end
