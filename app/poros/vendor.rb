class Vendor
  attr_reader :id,
              :name,
              :description,
              :contact_name,
              :contact_phone,
              :credit_accepted
  
  def initialize(info)
    @id = info[:id]
    @name = info[:name]
    @description = info[:description]                
    @contact_name = info[:contact_name]                
    @contact_phone = info[:contact_phone]                
    @credit_accepted = info[:credit_accepted]                
  end

  def credit?
    if credit_accepted == false
      "No"
    else
      "Yes"
    end
  end
end