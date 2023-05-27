class MarketsFacade
attr_reader :id

  def initialize(id = nil)
    @id = id
  end

  def markets
    results = service.get_markets[:data]

    results.map do |result|
      Market.new(format_market_data(result))
    end
  end

  def market
    result = service.get_market(@id)[:data]

    Market.new(format_market_data(result))
  end

  def market_vendors
    results = service.get_market_vendors(@id)[:data]

    results.map do |result|
      Vendor.new(format_vendor_data(result))
    end
  end

  def get_vendor
    result = service.get_vendor(@id)[:data]

    Vendor.new(format_vendor_data(result))
  end

  private
    def service
      @_service ||= MarketMoneyService.new
    end

    def format_market_data(data)
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

    def format_vendor_data(data)
      attributes = data[:attributes]
      {
        id: data[:id],
        name: attributes[:name],
        description: attributes[:description],
        contact_name: attributes[:contact_name],
        contact_phone: attributes[:contact_phone],
        credit_accepted: attributes[:credit_accepted]
      }
    end
end