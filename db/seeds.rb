# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.delete_all

# service/gratitude
Post.create!(
    author: 'Jordan Yu', 
    sharing_content: 'I appreciate Tim Keller\'s shiny bald head', 
    life_update: 'Gained 10 pounds')
Post.create!(
    author: 'Uvaldo Chavez', 
    sharing_content: 'I rededicated my life to Jesus after reading chapter 1', 
    life_update: 'Benched 500 pounds')
Post.create!(
    author: 'Julia Liang', 
    sharing_content: 'They shall call his name Immanuel (which means, God with us.)', 
    life_update: 'Designed things')
Post.create!(
    author: 'Frances Kim', 
    sharing_content: 'Do not be conformed to this world, but be transformed by the renewal
        of your mind, that by testing you may discern what is the will of God, what is good 
        and acceptable and perfect', 
    life_update: 'Visited my peer Hannah in Minnesota!')
Post.create!(
    author: 'Vincent Hu', 
    sharing_content: 'I was really blessed by the reading. Give me a call and find out why', 
    life_update: 'Balled all day long')





