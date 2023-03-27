class HeroPowersController < ApplicationController

     # GET /hero_powers
     def index
        render json:HeroPower.all
    end
    

end
