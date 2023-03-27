class HeroesController < ApplicationController
       #GET /heroes
       def index
        render json:Hero.all
    end
end
