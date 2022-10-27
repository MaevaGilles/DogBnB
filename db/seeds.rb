require 'faker'

City.destroy_all
Dog.destroy_all
Dogsitter.destroy_all

5.times do
    City.create!(city_name: Faker::Address.city)
  end
  
  10.times do
    Dogsitter.create!(first_name: Faker::Name.name, city_id: rand(1..10))
  end
  
  50.times do
    Dog.create!(dog_name: Faker::Creature::Dog.name, city_id: rand(1..10))
  end
  
  10.times do 
    Stroll.create!(dogsitter_id: rand(1..10))
  end
  
  100.times do
    StrollDog.create!(stroll_id: rand(1..10), dog_id: rand(1..50))
  end