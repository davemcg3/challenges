require "rails_helper"

RSpec.describe AvailableTauntsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/available_taunts").to route_to("available_taunts#index")
    end

    it "routes to #new" do
      expect(:get => "/available_taunts/new").to route_to("available_taunts#new")
    end

    it "routes to #show" do
      expect(:get => "/available_taunts/1").to route_to("available_taunts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/available_taunts/1/edit").to route_to("available_taunts#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/available_taunts").to route_to("available_taunts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/available_taunts/1").to route_to("available_taunts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/available_taunts/1").to route_to("available_taunts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/available_taunts/1").to route_to("available_taunts#destroy", :id => "1")
    end
  end
end
