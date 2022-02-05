# require 'URI'



puts 'Destroying all files'
Candidate.destroy_all
PoliticalParty.destroy_all
User.destroy_all
Booking.destroy_all

puts 'Let the madness begin'

puts '----------Creating political parties---------'
political_one = PoliticalParty.create(name: 'En Marche')
political_two = PoliticalParty.create(name: 'Les Insoumis')
political_three = PoliticalParty.create(name: 'Indépendant')
political_four = PoliticalParty.create(name: 'NPA')
political_five = PoliticalParty.create(name: 'Libres !')
political_six = PoliticalParty.create(name: 'EELV')
political_seven = PoliticalParty.create(name: 'Parti animaliste')
political_eight = PoliticalParty.create(name: 'Union Républicaine')
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
photo = URI.open('https://images.assetsdelivery.com/compings_v2/palinchak/palinchak1807/palinchak180700164.jpg')
candidate_one.photos.attach(io: photo, filename: "candidate#{candidate_one.first_name.downcase}_#{candidate_one.last_name.downcase}.jpg", content_type: 'image/jpg')
candidate_one.political_party = political_one
candidate_one.user = user_admin
candidate_one.save

puts '----------Creating candidate 1/1 done----------'

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
photo = URI.open('https://vsd.fr/images/2017/01/23/fae15786-76b6-4e1e-a3e9-863540a46e72.jpeg')
candidate_two.photos.attach(io: photo, filename: "candidate#{candidate_two.first_name.downcase}_#{candidate_two.last_name.downcase}.jpg", content_type: 'image/jpg')
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
photo = URI.open('https://www.babelio.com/users/AVT_Eric-Zemmour_5343.jpg')
candidate_three.photos.attach(io: photo, filename: "candidate#{candidate_three.first_name.downcase}_#{candidate_three.last_name.downcase}.jpg", content_type: 'image/jpg')
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

candidate_five = Candidate.new(
  first_name: 'Valérie',
  last_name: 'Pécresse',
  price_per_day: '500',
  description: "Je vais ressortir le Karcher de la cave. Cela fait dix ans qu’il y est et il est temps de l’utiliser. Il s’agit de remettre de l’ordre dans la rue.",
  latitude: 48.880438,
  longitude: 2.291582,
  address: '8 rue torricelli, 75017 paris',
  availability: true
)
candidate_five.political_party = political_five
candidate_five.user = user_admin
candidate_five.save

puts '----------Creating candidate 5/5 done----------'

candidate_six = Candidate.new(
  first_name: 'Yannick',
  last_name: 'Jadot',
  price_per_day: '20',
  description: "L'écologie ce n'est pas prendre une douche froide dans le noir une fois par semaine.",
  latitude: 48.874676,
  longitude: 2.332760,
  address: "58 rue de la chaussée d'antin, paris",
  availability: true
)
candidate_six.political_party = political_six
candidate_six.user = user_admin
candidate_six.save
puts '----------Creating candidate 6/6 done----------'

candidate_seven = Candidate.new(
  first_name: 'Hélène',
  last_name: 'Thouy',
  price_per_day: '3',
  description: "Les marques sont toujours plus nombreuses à abandonner la fourrure animale ! ",
  latitude: 43.605769,
  longitude: 1.447566,
  address: "2 rue d’Austerlitz 31000, Toulouse",
  availability: true
)
candidate_seven.political_party = political_seven
candidate_seven.user = user_admin
candidate_seven.save
puts '----------Creating candidate 7/7 done----------'

candidate_eight = Candidate.new(
  first_name: 'François',
  last_name: 'Asselineau',
  price_per_day: '66',
  description: "C'est un peu comme le sparadrap du capitaine Haddock dans « L'affaire Tournesol » , on ne s'en débarrasse jamais.",
  latitude: 48.845965,
  longitude: 2.385109,
  address: "15 Rue Erard,
  75012 Paris",
  availability: true
)
candidate_eight.political_party = political_eight
candidate_eight.user = user_admin
candidate_eight.save
puts '----------Creating candidate 8/8 done----------'

puts 'Creating some bookings'
book1 = Booking.new(
  start_date: '12/01/2022',
  end_date: '16/01/2022',
  total_price: 50,
  status: false
)
book1.user = user_other
book1.candidate = candidate_three
book1.save

book2 = Booking.new(
  start_date: '18/01/2022',
  end_date: '22/01/2022',
  total_price: 50,
  status: true
)
book2.user = user_other
book2.candidate = candidate_one
book2.save

puts 'All done, go and hire a candidate'
