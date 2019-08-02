require 'rest-client'

puts " Enter a search term:"
query = gets.chomp

res = RestClient.get 'http://www.bing.com/search', {params: {'q' => query}}

file = 'search-result.html'

File.open(file, 'w') { |file| file.write(res.body) }

puts ''
puts 'Response Code'
puts res.code
puts ''
puts 'Response Cookies'
puts res.cookies
puts ''
puts 'Response Headers'
puts res.headers
puts ''
puts 'Response Body...'
puts res.body[0..250]