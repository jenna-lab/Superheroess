class HeroesController < ApplicationController
       #GET /heroes
       def index
        render json:Hero.all.to_json(include: :powers)
    end

      #GET /heroes/:id
      def show
        hero = Hero.find_by(id: params[:id])
        if hero
        render json: hero.to_json(include: :powers)
        else
          render json: {errors: "Hero not found"}, status: :not_found
        end
      end
end
