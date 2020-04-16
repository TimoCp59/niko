require 'open-uri'
require 'nokogiri'   

def dark_method
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
symbol = page.css('.cmc-table-row').collect do |abrev|
	abrev.css('td.cmc-table__cell.cmc-table__cell--sortable.cmc-table__cell--left.cmc-table__cell--sort-by__symbol').text
end

value = page.css('.cmc-table-row').collect do |price|
	price.css('td.cmc-table__cell.cmc-table__cell--sortable.cmc-table__cell--right.cmc-table__cell--sort-by__price').text
end


crypto_name_array = symbol.zip(value).map{|k, v| {"#{k}":v}}

return crypto_name_array
end

puts dark_method

#crypto_name_array = Array.new
#crypto_name_array.push(crypto_name_hash)



#result = Hash.new
#result[symbol[0]] = value[0]

#puts result



