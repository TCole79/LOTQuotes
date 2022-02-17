# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Quote.destroy_all

Quote.create(
  quote_content:'"Not all those who wander are lost.”',
  quote_author:'Bilbo Bagen'
)

Quote.create(
  quote_content:'Memory is not what the heart desires. That is only a mirror.',
  quote_author:'Gimili' 
)

Quote.create(
  quote_content:'"There\'s some good in this world, Mr. Frodo… and it\'s worth fighting for.”',
  quote_author:'Sam Gangee'  
)

Quote.create(
  quote_content:'"The old world will burn in the fires of industry. The forests will fall. A new order will rise.”',
  quote_author:'Saruman'
)

Quote.create(
  quote_content:'"Do not be so quick to deal out death and judgment. Even the very wise do not see all ends.”',
  quote_author:'Gandalf'
)

Quote.create(
  quote_content:'"You can not hide, I see you! There is no life after me. Only death!”',
  quote_author:'Sauron'
)

