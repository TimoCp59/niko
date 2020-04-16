require 'open-uri'
require 'nokogiri'   

def email_by_city
	page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/95/avernes.html"))
	puts city = page.css('a.lientxt4').first.text
	puts email = page.css('tr.txt-primary.tr-last/td')[7].text
end

def all_email
	url = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/val-d-oise.html"))
	cities = url.css('a.lientxt').collect do |site|
		site.attribute('href').value 
	end
	return cities.to_a
end

puts email_by_city
puts all_email