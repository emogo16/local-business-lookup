require 'rails_helper'

describe "update a business route", :type => :request do

  before do
    @business = Business.create!(:name => 'test_restaurant', :category => 'healthy', :location => 'downtown', :phone => 132, :description => "very berry smoothies" )
    put "/businesses/#{@business.id}", params: { :name => 'test_restaurant', :category => 'healthy', :location => 'downtown', :phone => 132, :description => "very berry smoothies" }
  end

  it "updates the name, category, and description" do
    get "/businesses/#{@business.id}"
    expect(JSON.parse(response.body)["name"]).to eq("test_restaurant")
    expect(JSON.parse(response.body)["category"]).to eq("healthy")
    expect(JSON.parse(response.body)["description"]).to eq("very berry smoothies")
  end

  it 'returns a success message status' do
    expect(JSON.parse(response.body)['message']).to eq("Business is successfully in updated!")
  end
end