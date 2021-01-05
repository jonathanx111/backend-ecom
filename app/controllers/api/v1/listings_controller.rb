class Api::V1::ListingsController < ApplicationController
    def index 
        listings = Listing.all
        render json: listings
    end

    def show 
        listing = Listing.find(params[:id])
        render json: listing 
    end

    def create 
        listing = Listing.create!(listing_params)
        render json: listing
    end

    private 

    def listing_params 
        params.require(:listing).permit(:buyer_id, :seller_id, :instrument_id, :datetime_sold)
    end
end
