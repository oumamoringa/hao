puts "🌱 Seeding spices..."

landlord1 = Landlord.create(full_name:"Lisa Lyayuga",email:"lisa@gmail.com",phone_number: 123456789,img_url: "https/iuuw")
landlord2 = Landlord.create(full_name:"Joseph")
landlord3 = Landlord.create(full_name:"Richard")
landlord4 = Landlord.create(full_name:"Oscar")
landlord5 = Landlord.create(full_name:"Chris")

# # tenant1 = Tenant.create(full_name:"Lisa",property_id: property5.id)
# tenant2 = Tenant.create(full_name:"Joseph",property_id: property1.id)
# tenant3 = Tenant.create(full_name:"Richard",property_id: property2.id)
# tenant4 = Tenant.create(full_name:"Oscar",property_id: property3.id)
# tenant5 = Tenant.create(full_name:"Chris",property_id: property4.id)


# property1 = Property.create(property_type:"Duplex",landlord_id: landlord1.id)
# property2 = Property.create(property_type:"Duplex",landlord_id: landlord2.id)
# property3 = Property.create(property_type:"Duplex",landlord_id: landlord3.id)
# property4 = Property.create(property_type:"Duplex",landlord_id: landlord4.id)
# # property5 = Property.create(property_type:"Duplex",landlord_id: landlord5.id)

puts "✅ Done seeding!"
