# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'seeding heroes...'
Hero.create!(name: "Trett", super_name: "trettstar")
Hero.create!(name: "Brett", super_name: "brettstar")
Hero.create!(name: "Nate", super_name: "natestar")

puts 'seeding powers...'
Power.create!(name: "strength", description: "superhuman strength, insane strength , strength of 50 men in 1 body")
Power.create!(name: "invisibility", description: "ability to disguise, hide from naked eye")
Power.create!(name: "speed", description: "insane speed, so fast, faster than lightning")


puts 'seeding heropowers...'
hero_power1 = HeroPower.create(strength: "Average", power_id: 1, hero_id:1)
hero_power2 = HeroPower.create(strength: "Weak", power_id: 2, hero_id:2)
hero_power3 = HeroPower.create(strength: "Strong", power_id: 3, hero_id:3)

puts '✅ Done seeding'