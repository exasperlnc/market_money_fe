class MarketService
  
  def get_markets
    get_url("/api/v0/markets")  
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