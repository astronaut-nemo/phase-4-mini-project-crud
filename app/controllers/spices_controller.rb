class SpicesController < ApplicationController
 
    # GET /spices
    def index
        spices = Spice.all
        render json: spices, status: :ok
    end

    # POST /spices
    def create
        spice = Spice.create(spice_params)
        render json: spice, status: :created
    end

    private
    # Strong Params
    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end
    
end
