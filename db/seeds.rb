puts 'Destroying all files'
Candidate.destroy_all
PoliticalParty.destroy_all
User.destroy_all
Booking.destroy_all

puts 'Let the madness begin'

puts '----------Creating political parties---------'
political_one = PoliticalParty.create(name: 'En Marche')
political_two = PoliticalParty.create(name: 'Les Républicains')
political_three = PoliticalParty.create(name: 'Indépendant')
political_four = PoliticalParty.create(name: 'Nouveau parti anticapitaliste')
puts '----------Creating political parties done---------'

puts '----------Creating new users---------'

user_admin = User.create(
  first_name: 'Jo',
  last_name: 'Lambda',
  email: 'jo.lambda@vote.fr',
  admin: true,
  password: "password"
)
puts '----------Creating admin One Done---------'

user_other = User.create(
  first_name: 'Jane',
  last_name: 'Gamma',
  email: 'jane.gamma@vote.fr',
  admin: false,
  password: "password"
)
puts '----------Creating user One Done---------'

puts '----------Creating candidates----------'

candidate_one = Candidate.new(
  first_name: 'Emmanuel',
  last_name: 'Macron',
  price_per_day: '100',
  description: 'En même temps, en marche, traverse les rues et e****** certains',
  latitude: 48.868938,
  longitude: 2.321658,
  address: '55 Rue du Faubourg Saint-Honoré, 75008 Paris',
  availability: true
)
candidate_one.political_party = political_one
candidate_one.user = user_admin
candidate_one.save

puts '----------Creating candidate 1/3 done----------'

candidate_two = Candidate.new(
  first_name: 'Jean-Luc',
  last_name: 'Mélanchon',
  price_per_day: '1000',
  description: "J'aime le rouge, c'est beau et c'est bon le rouge",
  latitude: 48.880768,
  longitude: 2.350575,
  address: '43 rue de Dunkerque, 75010 Paris',
  availability: true
)
candidate_two.political_party = political_two
candidate_two.user = user_admin
candidate_two.save
puts '----------Creating candidate 2/2 done----------'

candidate_three = Candidate.new(
  first_name: 'Eric',
  last_name: 'Zemour',
  price_per_day: '10',
  description: "L'avenir de la France du futur !",
  latitude: 48.880768,
  longitude: 2.308744,
  address: '10 rue jean goujon, 75008 Paris',
  availability: true
)
candidate_three.political_party = political_three
candidate_three.user = user_admin
candidate_three.save
puts '----------Creating candidate 3/3 done----------'

candidate_four = Candidate.new(
  first_name: 'Philippe',
  last_name: 'Poutou',
  price_per_day: '0',
  description: "Je crois que je suis le seul à avoir un métier normal.",
  latitude: 48.854499,
  longitude: 2.418708,
  address: '2 rue Richard Lenoir, 93100 Montreuil',
  availability: true
)
candidate_four.political_party = political_four
candidate_four.user = user_admin
candidate_four.save
puts '----------Creating candidate 4/4 done----------'

puts 'Creating some bookings'
book1 = Booking.new(
  start_date: '12/01/22',
  end_date: '16/01/22',
  total_price: 50,
  status: false
)
book1.user = user_other
book1.candidate = candidate_three
book1.save

book2 = Booking.new(
  start_date: '18/01/22',
  end_date: '12/01/22',
  total_price: 50,
  status: false
)
book2.user = user_other
book2.candidate = candidate_one
book2.save

puts 'All done, go and hire a candidate'
