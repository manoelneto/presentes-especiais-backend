require "rails_helper"

RSpec.describe PersonalizationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/personalizations").to route_to("personalizations#index")
    end

    it "routes to #new" do
      expect(:get => "/personalizations/new").to route_to("personalizations#new")
    end

    it "routes to #show" do
      expect(:get => "/personalizations/1").to route_to("personalizations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/personalizations/1/edit").to route_to("personalizations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/personalizations").to route_to("personalizations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/personalizations/1").to route_to("personalizations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/personalizations/1").to route_to("personalizations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/personalizations/1").to route_to("personalizations#destroy", :id => "1")
    end

  end
end
