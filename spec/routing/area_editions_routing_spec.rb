require "rails_helper"

RSpec.describe AreaEditionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/area_editions").to route_to("area_editions#index")
    end

    it "routes to #new" do
      expect(:get => "/area_editions/new").to route_to("area_editions#new")
    end

    it "routes to #show" do
      expect(:get => "/area_editions/1").to route_to("area_editions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/area_editions/1/edit").to route_to("area_editions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/area_editions").to route_to("area_editions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/area_editions/1").to route_to("area_editions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/area_editions/1").to route_to("area_editions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/area_editions/1").to route_to("area_editions#destroy", :id => "1")
    end

  end
end
