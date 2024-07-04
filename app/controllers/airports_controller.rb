class AirportsController < ApplicationController
  include AirportsHelper

  def index
    render json: {success: true}
  end

  def show
    cache_key = "airport/#{params[:id]}"
    # Read cache
    data = Rails.cache.read(cache_key)
    if data
      # Hit cache
      return render json: {
        success: true,
        data: data.attributes.to_h,
        data_type: "hit_cache"
      }
    else
      # Miss cache
      data = Airport.find(params[:id])
      Rails.cache.write(cache_key, data) if data.present?
      return render json: {
        success: true,
        data: data.attributes.to_h,
        data_type: "miss_cache"
      }
    end
  end
end
