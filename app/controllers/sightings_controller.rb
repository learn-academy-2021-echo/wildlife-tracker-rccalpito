class SightingsController < ApplicationController
    
    def index
        sightings = Sighting.all
        render json: sightings
    end
    
    def show
        sighting = Sighting.find(params[:id])
        render json: sighting
    end

    def create
        sighting = Sighting.create(sighting_params)
        if sighting.valid?
            render json: sighting
        else
            render json: sighting.errors
        end
    end

    def new
        sighting = Sighting.new
    end
    def update
        sighting = Sighting.find(params[:id])
        sighting.update(sighting_params)
    end
    
    def edit
        sighting = Sighting.find(params[:id])
    end
    def destroy
        sighting = Sighting.find(params[:id])
        sighting.delete()
    end


    private
    def sighting_params
        params.require(:sighting).permit(:date,:latitude,:longitude)
    end
end
