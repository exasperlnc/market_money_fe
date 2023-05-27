class MarketMoneyService
  
  def get_markets
    get_url("/api/v0/markets")  
  end

  def get_market(id)
    get_url("/api/v0/markets/#{id}")
  end

  def get_market_vendors(id)
    get_url("/api/v0/markets/#{id}/vendors")
  end

  def get_vendor(id)
    get_url("/api/v0/vendors/#{id}")
  end

  private
    def conn
      conn = Faraday.new(url: "http://localhost:3000") do |faraday|
      end
    end

    def get_url(url)
      response = conn.get(url)
      JSON.parse(response.body, symbolize_names: true)
    end
end