require "rails_helper"

RSpec.describe GivenTauntsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/given_taunts").to route_to("given_taunts#index")
    end

    it "routes to #new" do
      expect(:get => "/given_taunts/new").to route_to("given_taunts#new")
    end

    it "routes to #show" do
      expect(:get => "/given_taunts/1").to route_to("given_taunts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/given_taunts/1/edit").to route_to("given_taunts#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/given_taunts").to route_to("given_taunts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/given_taunts/1").to route_to("given_taunts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/given_taunts/1").to route_to("given_taunts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/given_taunts/1").to route_to("given_taunts#destroy", :id => "1")
    end
  end
end
