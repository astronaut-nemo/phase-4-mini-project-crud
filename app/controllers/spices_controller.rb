class SpicesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found_response

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

    # PATCH /spices/:id
    def update
        spice = find_spice
        spice.update(spice_params)
        render json: spice, status: :accepted
    end

    private
    # Strong Params
    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end

    # Locate resource
    def find_spice
        Spice.find(params[:id])
    end

    # Not Found Response
    def render_record_not_found_response
        render json: {error: "Spice not found"}, status: :not_found
    end
end
