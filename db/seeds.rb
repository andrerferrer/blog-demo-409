require "open-uri"

puts "Destroy all of our articles"
Article.destroy_all


puts "Seed one article"
file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
article = Article.new(title: 'NES', body: "A great console")
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
article.save!

puts "We're good to go"
