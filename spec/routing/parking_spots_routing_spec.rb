require "rails_helper"

RSpec.describe ParkingSpotsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/parking_spots").to route_to("parking_spots#index")
    end

    it "routes to #new" do
      expect(get: "/parking_spots/new").to route_to("parking_spots#new")
    end

    it "routes to #show" do
      expect(get: "/parking_spots/1").to route_to("parking_spots#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/parking_spots/1/edit").to route_to("parking_spots#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/parking_spots").to route_to("parking_spots#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/parking_spots/1").to route_to("parking_spots#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/parking_spots/1").to route_to("parking_spots#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/parking_spots/1").to route_to("parking_spots#destroy", id: "1")
    end
  end
end
