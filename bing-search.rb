require 'rest-client'

p " Enter a search term:"
query = gets.chomp

res = RestClient.get 'http://www.bing.com/search', {params: {'q' => query}}
p res