class Market
  attr_reader :id,
              :name,
              :street,
              :city,
              :county,
              :state,
              :zip,
              :lon,
              :lat,
              :vendor_count

  def initialize(data)
    @id = data[:id]
    @name = data[:name]
    @street = data[:street]
    @city = data[:city]
    @county = data[:county]
    @state = data[:state]
    @zip = data[:zip]
    @lon = data[:lon]
    @lat = data[:lat]
    @vendor_count = data[:vendor_count]
  end
end