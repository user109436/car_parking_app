require "rails_helper"

RSpec.describe UltrasonicReadingsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/ultrasonic_readings").to route_to("ultrasonic_readings#index")
    end

    it "routes to #new" do
      expect(get: "/ultrasonic_readings/new").to route_to("ultrasonic_readings#new")
    end

    it "routes to #show" do
      expect(get: "/ultrasonic_readings/1").to route_to("ultrasonic_readings#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/ultrasonic_readings/1/edit").to route_to("ultrasonic_readings#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/ultrasonic_readings").to route_to("ultrasonic_readings#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/ultrasonic_readings/1").to route_to("ultrasonic_readings#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/ultrasonic_readings/1").to route_to("ultrasonic_readings#update", id: "1")
    end

    it "routes to#destroy" do
     expect(delete: "/ultrasonic_readings/1").to route_to("ultrasonic_readings#destroy", id: "1")
    end
  end
end
