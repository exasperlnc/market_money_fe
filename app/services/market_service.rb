class MarketService
  
  def get_markets
    get_url(localhost:3000/api/v0/markets/index)  
  end

  private
    def conn
      conn = Faraday.get("https://search.ams.usda.gov/farmersmarkets/v1/data.svc/zipSearch?zip=80203")
      JSON.parse(response.body, symbolize_names: true)
    end

    def get_url(url)
      response = conn.get(url)
      JSON.parse(response.body, symbolize_names: true)
    end
end