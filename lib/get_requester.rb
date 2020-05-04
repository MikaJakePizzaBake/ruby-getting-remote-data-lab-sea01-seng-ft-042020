# Write your code here
require 'net/http' #Gets back an object closer to the structure of the actual HTTP
require 'open-uri' #required to get n HTTP request
require 'json' #COnverts response.body JSON into a Ruby array/hash
class GetRequester
  attr_accessor :url

  def initialize (url)
    @url = url
  end
  def get_response_body
    uri = URI.parse(url) #extracts data from response object
    response = Net::HTTP.get_response(uri)
    response.body
  end
  def parse_json
    JSON.parse(get_response_body)
  end
end
