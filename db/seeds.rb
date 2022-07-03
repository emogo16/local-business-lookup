class Seed 

  def self.begin
    seed = Seed.new
    seed.generate_businesses 
  end

  def generate_businesses
    25.times do |i|
      business = Business.create!(
        name: Faker::Restaurant.name,
        type: Faker::Restaurant.type,
        description: Faker::Restaurant.description,
        location: Faker::Address.full_address,
        phone: Faker::PhoneNumber.phone_number,
        )
      puts "Business: #{business.name}, type: #{business.type}, description: #{business.description}, location: #{business.location}, phone #{business.phone_number}."
    end
  end
end

Seed.begin 