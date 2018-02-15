require "rails_helper"

RSpec.describe AuthorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/authors").to route_to("authors#index")
    end

    it "routes to #new" do
      expect(:get => "/authors/new").to route_to("authors#new")
    end

    it "routes to #show" do
      expect(:get => "/authors/1").to route_to("authors#show", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/authors").to route_to("authors#create")
    end
  end
end
