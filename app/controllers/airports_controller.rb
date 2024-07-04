class AirportsController < ApplicationController
  include AirportsHelper

  def index
    render json: {success: true}
  end
end
