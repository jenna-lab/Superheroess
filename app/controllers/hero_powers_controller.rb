class HeroPowersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

     # GET /hero_powers
     def index
        render json:HeroPower.all
    end
    
    #POST /hero_powers
    def create
      heropower = HeroPower.new(hero_power_params)
  
      if heropower.save
        render json: heropower.hero, serializer: HeroPowerSerializer, status: :created
      else
        render json: { errors: "validation errors" }, status: :unprocessable_entity
      end
    end

    private

    def hero_power_params
      params.require(:hero_power).permit(:strength, :power_id, :hero_id)   
     end
end
