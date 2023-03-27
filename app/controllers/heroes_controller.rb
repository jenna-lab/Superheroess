class HeroesController < ApplicationController
       #GET /heroes
       def index
        render json:Hero.all
    end

      #GET /heroes/:id
      def show
        hero = Hero.find_by(id: params[:id])
        if hero
        render json: hero
        else
          render json: {errors: "Hero not found"}, status: :not_found
        end
      end
end
