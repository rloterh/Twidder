require "rails_helper"

RSpec.describe OpinionsController, type: :routing do
  context "routing" do
    it "routes to #index" do
      expect(get: "/opinions").to route_to("opinions#index")
    end

    it "routes to #create" do
      expect(post: "/opinions").to route_to("opinions#create")
    end
  end
end
