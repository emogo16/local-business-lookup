require 'rails_helper'

describe "delete a business route", :type => :request do
  let!(:businesses) { FactoryBot.create_list(:business, 25)}

  before do
    @business = Business.create!(:name => 'test_restaurant', :category => 'healthy', :location => 'downtown', :phone => 132, :description => "very berry smoothies" )
    delete "/businesses/#{@business.id}"
  end

  it 'deletes the business' do
    expect(JSON.parse(response.body)["message"]).to eq("Deleted business successfully.")
  end
end