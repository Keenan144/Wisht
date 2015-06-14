
require 'nokogiri'
require 'open-uri'

url = 'http://www.amazon.com/YES-2xLP-CD-Jason-Mraz/dp/B00KFU2ZJE/ref=sr_1_1?ie=UTF8&qid=1434274699&sr=8-1&keywords=jason+mraz+record'
doc = Nokogiri::HTML(open(url))
p doc.at_css("title").text
p doc.at_css('.offer-price').text
p doc.css("#priceblock_ourprice").text
