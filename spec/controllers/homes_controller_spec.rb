require 'rails_helper'

RSpec.describe HomesController, type: :controller do
  context "GET #index" do
    it "returns a successful response" do
      get :index
      expect(response).to be_successful
    end
  end
end
