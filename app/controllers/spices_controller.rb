class SpicesController < ApplicationController

    def index
        spices = Spice.all
        render json: spices, status: :ok
    end
      
end
