require 'rails_helper'

describe "get all businesses route", :type => :request do
  let!(:business) { FactoryBot.create_list(:business, 20)}

  before { get '/businesses'}

  it 'returns all business' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end