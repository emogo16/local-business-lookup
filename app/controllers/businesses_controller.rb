class BusinessesController < ApplicationController
  
  def index
    @businesses = Business.all
    json_response(@businesses)
  end

  def show
    @business = Business.find(params[:id])
    json_response(@business)
  end

  def create
    @business = Business.create!(business_params)
    json_response(@business, :created)
  end

  def update
    @business = Business.find(params[:id])
    if @business.update!(business_params)
      render status: 200, json: {
        message: "Business is successfully in updated!"
      }
    end
  end

  def destroy
    @business = Business.find(params[:id])
    if @business.destroy!
      render status: 200, json: {
        message: "Deleted business successfully."
      }
    end
  end

  private
  def business_params
    params.permit(:name, :category, :description, :location, :phone)
  end
end

