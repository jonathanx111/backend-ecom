class Api::V1::InstrumentsController < ApplicationController

    def index 
        instruments = Instrument.all
        render json: instruments
    end

    def show 
        instrument = Instrument.find(params[:id])
        render json: instrument 
    end

    def create 
        instrument = Instrument.create(instrument_params)
        render json: instrument
    end

    private

    def instrument_params 
        params.permit(:brand, :type_of, :condition, :year, :picture_url, :price, :user_id, :model)
    end
end
