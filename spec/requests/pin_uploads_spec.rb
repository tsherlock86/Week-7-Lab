require 'rails_helper'

RSpec.describe "PinUploads", type: :request do
  describe "GET /pin_uploads" do
    it "works! (now write some real specs)" do
      get pin_uploads_path
      expect(response).to have_http_status(200)
    end
  end
end
