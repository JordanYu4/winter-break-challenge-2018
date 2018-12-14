# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.delete_all
Mission.delete_all

sg = Category.create!(mission_type: 'Spiritual Growth')
ev = Category.create!(mission_type: 'Evangelism')
ser = Category.create!(mission_type: 'Service/Gratitude')
equ = Category.create!(mission_type: 'Equipping')

# service/gratitude
Mission.create!(name: 'Do chores (laundry, dishes, take out the trash) at home (max: 40)', points: 10, category: ser)
Mission.create!(name: 'Write a "Thank you" note to someone who is not your peer', points: 20, category: ser)
Mission.create!(name: 'Learn a new dish', points: 20, category: ser)
Mission.create!(name: '10 Days of Gratitude Journal (10 entries/day)', points: 50, category: ser)
Mission.create!(name: 'Host Dinner for Your Family and/or Friends)', points: 60, category: ser)





