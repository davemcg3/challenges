require "rails_helper"

RSpec.describe WagersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/wagers").to route_to("wagers#index")
    end

    it "routes to #new" do
      expect(:get => "/wagers/new").to route_to("wagers#new")
    end

    it "routes to #show" do
      expect(:get => "/wagers/1").to route_to("wagers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/wagers/1/edit").to route_to("wagers#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/wagers").to route_to("wagers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/wagers/1").to route_to("wagers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/wagers/1").to route_to("wagers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wagers/1").to route_to("wagers#destroy", :id => "1")
    end
  end
end
