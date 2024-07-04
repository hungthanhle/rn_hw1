class AirportsController < ApplicationController
  include AirportsHelper

  def index
    render json: {success: true}
  end

  def show
    @airport = AirportService.fetch_airport(params[:id])
    render json: @airport
  end
end
