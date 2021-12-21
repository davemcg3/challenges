require 'rails_helper'

RSpec.describe "GivenTaunts", type: :request do
  describe "GET /given_taunts" do
    it "works! (now write some real specs)" do
      get given_taunts_path
      expect(response).to have_http_status(200)
    end
  end
end
