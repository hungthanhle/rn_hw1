class AirportService
  def self.fetch_airport(id)
    cache_key = "airport/#{id}"
    
    # Read cache
    data = Rails.cache.read(cache_key)
    if !data.present?
      # Miss cache
      data = Airport.find(id)
      Rails.cache.write(cache_key, data) if data.present?
    end

    return data.attributes
  end
end
