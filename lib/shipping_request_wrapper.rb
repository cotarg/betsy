require 'httparty'

module ShippingRequestWrapper

  BASE_URL = "https://shipping-service-petsy.herokuapp.com/"

  def self.all_estimates(id)
    data = HTTParty.get(BASE_URL + "/all_estimates/#{id}").parsed_response["estimates"]
    return data
  end
  #
  # def self.ups(id)
  #   data = HTTParty.get(BASE_URL + "/ups/#{id}").parsed_response["estimates"]
  #   return data
  # end
  #
  # def self.fedex(id)
  #   data = HTTParty.get(BASE_URL + "/fedex/#{id}").parsed_response["estimates"]
  #   return data
  # end
end
