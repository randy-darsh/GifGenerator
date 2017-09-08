require 'net/http'
require 'json'
url = "http://api.giphy.com/v1/gifs/search?q=ryan+gosling&api_key=c47d69e15069405ebdbe72cd9581c061&limit=5"
resp = Net::HTTP.get_response(URI.parse(url))
buffer = resp.body
result = JSON.parse(buffer)
puts result
