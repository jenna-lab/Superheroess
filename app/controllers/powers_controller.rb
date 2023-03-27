class PowersController < ApplicationController
      # GET /powers
      def index
        render json:Power.all
    end
end
