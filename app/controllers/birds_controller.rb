class BirdsController < ApplicationController
    

    def index 
        birds = Birs.all
        render json: birds
    end 

    def show
        bird = Bird.find_by(id:params[:id])
        if bird
            render json: bird
        else
            render json: {error: "Bird not Found"}, status: :not_found
        end 
    end
end
