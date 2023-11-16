require "rails_helper"

RSpec.describe AppointmentTitlesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/appointment_titles").to route_to("appointment_titles#index")
    end

    it "routes to #new" do
      expect(get: "/appointment_titles/new").to route_to("appointment_titles#new")
    end

    it "routes to #show" do
      expect(get: "/appointment_titles/1").to route_to("appointment_titles#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/appointment_titles/1/edit").to route_to("appointment_titles#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/appointment_titles").to route_to("appointment_titles#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/appointment_titles/1").to route_to("appointment_titles#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/appointment_titles/1").to route_to("appointment_titles#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/appointment_titles/1").to route_to("appointment_titles#destroy", id: "1")
    end
  end
end
