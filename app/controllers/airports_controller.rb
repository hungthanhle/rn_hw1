class AirportsController < ApplicationController
  include AirportsHelper

  def index
    render json: {success: true}
  end

  def show
    render json: {success: true}
  end
end
