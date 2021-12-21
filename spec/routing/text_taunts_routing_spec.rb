require "rails_helper"

RSpec.describe TextTauntsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/text_taunts").to route_to("text_taunts#index")
    end

    it "routes to #new" do
      expect(:get => "/text_taunts/new").to route_to("text_taunts#new")
    end

    it "routes to #show" do
      expect(:get => "/text_taunts/1").to route_to("text_taunts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/text_taunts/1/edit").to route_to("text_taunts#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/text_taunts").to route_to("text_taunts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/text_taunts/1").to route_to("text_taunts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/text_taunts/1").to route_to("text_taunts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/text_taunts/1").to route_to("text_taunts#destroy", :id => "1")
    end
  end
end
