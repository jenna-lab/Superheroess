class PowersController < ApplicationController
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
end
