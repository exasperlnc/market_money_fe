class MarketsFacade
  def markets
    results = service.get_markets[:data]

    results.map do |result|
      Market.new(format_data(result))
    end
  end

  def market(id)
    result = service.get_market(id)[:data]

    Market.new(format_data(result))
  end

  private
    def service
      @_service ||= MarketService.new
    end

    def format_data(data)
      attributes = data[:attributes]
      {
        id: data[:id],
        name: attributes[:name],
        street: attributes[:street],
        city: attributes[:city],
        county: attributes[:county],
        state: attributes[:state],
        zip: attributes[:zip],
        lon: attributes[:lon],
        lat: attributes[:lat],
        vendor_count: attributes[:vendor_count]
      }
    end
end