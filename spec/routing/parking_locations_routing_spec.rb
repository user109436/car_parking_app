require "rails_helper"

RSpec.describe ParkingLocationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/parking_locations").to route_to("parking_locations#index")
    end

    it "routes to #new" do
      expect(get: "/parking_locations/new").to route_to("parking_locations#new")
    end

    it "routes to #show" do
      expect(get: "/parking_locations/1").to route_to("parking_locations#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/parking_locations/1/edit").to route_to("parking_locations#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/parking_locations").to route_to("parking_locations#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/parking_locations/1").to route_to("parking_locations#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/parking_locations/1").to route_to("parking_locations#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/parking_locations/1").to route_to("parking_locations#destroy", id: "1")
    end
  end
end
