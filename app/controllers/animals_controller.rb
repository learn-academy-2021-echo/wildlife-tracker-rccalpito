class AnimalsController < ApplicationController
    # Look at the controller verbs
    def index
        animals = Animal.all
        render json: animals
    end
    def show
        animal = Animal.find(params[:id])
        render json: animal
    end
    def create
        animal = Animal.create(animal_params)
        if animal.valid?
            render json: animal
        else
            render json: animal.error
        end
    end
    def new
        animal = Animal.new
    end
    def update
        animal = Animal.find(params[:id])
        animal.update(animal_params)
    end
    def edit
        animal = Animal.find(params[:id])
    end
    def destroy
        animal = Animal.find(params[:id])
        animal.delete()
    end

    private
    def animal_params
        params.require(:animal).permit(:common_name,:latin_name,:kingdom)
    end

end
