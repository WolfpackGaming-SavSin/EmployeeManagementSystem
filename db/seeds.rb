# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

<<<<<<< HEAD
Employee.create(firstName: "david", lastName: "fountain", username: "dfountain", email: "dfountain@sacent.com", ext: "1048", directPhone: "9167366645", directFax: "9162334155", dob: "2018-11-14")
Employee.create(firstName: "brad", lastName: "templeton", username: "btempleton", email: "btempleton@sacent.com", ext: "1201", directPhone: "9167366601")
Employee.create(firstName: "dmitriy", lastName: "numenko", username: "dnumenko", email: "dnumenko@sacent.com", ext: "1134")

Location.create(locationName: "Expo", streetAddress: "1111 Exposition Blvd", city: "Sacramento", zipCode: "95815", suite: "700")
Location.create(locationName: "Fair Oaks", streetAddress: "6600 Mercy Ct", city: "Fair Oaks", zipCode: "95628", suite: "180")
Location.create(locationName: "Fair Oaks (allergy)", streetAddress: "6600 Mercy Ct", city: "Fair Oaks", zipCode: "95628", suite: "180b")
Location.create(locationName: "Folsom", streetAddress: "1561 Creekside Dr", city: "Folsom", zipCode: "95630", suite: "180")
Location.create(locationName: "Roseville (ent)", streetAddress: "2 Medical Plaza Dr", city: "Roseville", zipCode: "95661", suite: "235")
Location.create(locationName: "Roseville (allergy)", streetAddress: "1528 Eureka Rd", city: "Roseville", zipCode: "95661", suite: "102")
Location.create(locationName: "Roseville (derm)", streetAddress: "5 Medical Plaza Dr", city: "Roseville", zipCode: "95661", suite: "100")
Location.create(locationName: "Lodi", streetAddress: "801 S. Ham Ln", city: "Lodi", zipCode: "95242", suite: "O")
Location.create(locationName: "Stockton", streetAddress: "10200 Trinity Parkway", city: "Stockton", zipCode: "95219", suite: "201")
Location.create(locationName: "Tracy", streetAddress: "550 W. Eaton Ave", city: "Tracy", zipCode: "95376", suite: "548")

Security.create(name: "Alarm Code")
Security.create(name: "Key Fob")

Application.create(name: "AllMeds EHR")
Application.create(name: "APMe")
Application.create(name: "Epic")
Application.create(name: "SecureBillPay Capture")
Application.create(name: "Dr. First")
=======
Employee.create(firstName: "david", lastName: "fountain", username: "dfountain", email: "dfountain@sacent.com", ext: "1048", directPhone: "9167366645", directFax: "9162334155", job_title: "IT Systems Engineer", dob: "2018-11-14", status: true)
Employee.create(firstName: "brad", lastName: "templeton", username: "btempleton", email: "btempleton@sacent.com", ext: "1201", directPhone: "9167366601", directFax: "9162334155", job_title: "Director of Information Technology", status: true)
Employee.create(firstName: "dmitriy", lastName: "numenko", username: "dnumenko", email: "dnumenko@sacent.com", ext: "1134", job_title: "Temp Desktop Support", status: true)

Application.create(name: "AllMeds EHR")
Application.create(name: "AllMeds PM")
Application.create(name: "Dr. First")
Application.create(name: "SCC Epic")
Application.create(name: "Secure Bill Pay Capture")

Security.create(name: "Alarm Code")
Security.create(name: "Access Control")

Location.create(name: "Expo", streetAddress: "1111 Exposition Blvd", city: "Sacramento", zipCode: "95815", suite: "700")
Location.create(name: "Fair Oaks (ent)", streetAddress: "6600 Mercy Ct", city: "Fair Oaks", zipCode: "95628", suite: "180")
Location.create(name: "Fair Oaks (allergy)", streetAddress: "6600 Mercy Ct", city: "Fair Oaks", zipCode: "95628", suite: "180b")
Location.create(name: "Folsom", streetAddress: "1561 Creekside Ave", city: "Folsom", zipCode: "95630", suite: "180")
Location.create(name: "Roseville (ent)", streetAddress: "2 Medical Plaza Dr", city: "Roseville", zipCode: "95661", suite: "235")
Location.create(name: "Roseville (allergy)", streetAddress: "1528 Eureka Rd", city: "Roseville", zipCode: "95661", suite: "102")
Location.create(name: "Roseville (temp)", streetAddress: "5 Medical Plaza Dr", city: "Roseville", zipCode: "95661", suite: "100")
Location.create(name: "Stockton", streetAddress: "10200 Trinity Prkwy", city: "Stockton", zipCode: "95219", suite: "201")
Location.create(name: "Lodi", streetAddress: "801 S. Ham Ln", city: "Lodi", zipCode: "95242", suite: "O")
Location.create(name: "Tracy", streetAddress: "550 W. Eaton Ave", city: "Tracy", zipCode: "95376", suite: "548")
>>>>>>> ImplementPundit
