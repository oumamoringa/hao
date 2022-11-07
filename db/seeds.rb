puts "🌱 Seeding spices..."


  10.times do
    Landlord.create(
      name: Faker::Name.name(),
      phone_number: Faker::PhoneNumber.cell_phone,
      email: Faker::Internet.email(),
      img_url: Faker::Avatar.image
    )
  end


Landlord.all.each do |landlord|
  10.times do
    Property.create(
      location: Faker::Address.city,
      property_type: Faker::Company.type,
      property_name: Faker::Name.name(),
      property_size: rand(1..10),
      landlord_id: landlord.id

    )
  end
end

Property.all.each do |property|
  10.times do
    Tenant.create(
      name: Faker::Name.name(),
      email: Faker::Internet.email(),
      phone_number: Faker::PhoneNumber.cell_phone,
      property_id: property.id

    )
  end
end





puts "✅ Done seeding!"
