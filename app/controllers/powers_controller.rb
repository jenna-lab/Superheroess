class PowersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:update]
      # GET /powers
      def index
        render json:Power.all
    end

    #GET /powers/:id
def show
  power = Power.find_by(id: params[:id])
  if power
  render json: power
  else
    render json: {errors: "Power not found"}, status: :not_found
  end
end

   #PATCH /powers/:id
   def update
    power = find_power
    if power
      power.update!(power_params)
      render json: power
    else
      render json: {error: "Power not found"}, status: :not_found
  end
end

private

def find_power
  Power.find_by(id: params[:id])
end

def power_params
  params.permit(:name, :description)
end

end
