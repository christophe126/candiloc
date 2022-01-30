
puts 'Destroying all files'
PoliticalParty.destroy_all
Candidate.destroy_all
Booking.destroy_all
User.destroy_all

puts 'Let the madness begin'

puts 'Creating political parties'
PoliticalParty.create(name: 'En Marche')
PoliticalParty.create(name: 'Les Républicains')
PoliticalParty.create(name: 'Gens Méchants')
PoliticalParty.create(name: 'Lutte Ouvrière')
PoliticalParty.create(name: 'Meurice2022')

puts 'Creating new candidates'
Candidate.create(first_name: 'Emanuelle',
    last_name: 'Macron',
    price_per_day: '100',
    description: 'En même temps, en marche, traverse les rues et e****** certains',
    availability: true,
    )
Candidate.create(first_name: 'Guillaume',
    last_name: 'Meurice',
    price_per_day: '10',
    description: "L'avenir de la France du futur !",
    availability: true,
)
Candidate.create(first_name: 'Eric',
    last_name: 'Zemour',
    price_per_day: '1',
    description: "Dire n'importe quoi pour qu'on parle de moi",
    availability: true,
)
Candidate.create(first_name: 'Nathalie',
    last_name: 'Arthaud',
    price_per_day: '0',
    description: "Oui le communisme existe encore",
    availability: true,
)

puts 'Creating new users'
User.create(first_name: 'Jo',
    last_name: 'Lambda',
    email_address: 'jo.lambda@vote.fr',
    admin: false,
    password: "password")

    User.create(first_name: 'Jane',
    last_name: 'Gamma',
    email_address: 'jane.gamma@vote.fr',
    admin: false,
    password: "password")

user.save

puts 'Creating some bookings'
Booking.create(start_date: 12/01/22,
    end_date: 16/01/22,
    total_price: 50,
    status: false
)

Booking.create(start_date: 15/02/22,
    end_date: 19/06/22,
    total_price: 170,
    status: true
)

booking.save

puts 'All done, go and hire a candidate'
