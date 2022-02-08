require 'open-uri'


puts 'Destroying all files'
Candidate.destroy_all
PoliticalParty.destroy_all
User.destroy_all
Booking.destroy_all
Review.destroy_all

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
photo_main_candidate_1 = URI.open('https://images.assetsdelivery.com/compings_v2/palinchak/palinchak1807/palinchak180700164.jpg')
candidate_one.photos.attach(io: photo_main_candidate_1, filename: "photo_main.jpg", content_type: 'image/jpg')
photo_thumb_1_candidate_1 = URI.open('https://static.mediapart.fr/etmagine/default/files/2021/11/07/000-9qh8kn.jpg')
candidate_one.photos.attach(io: photo_thumb_1_candidate_1, filename: "photo_thumb_1.jpg", content_type: 'image/jpg')
photo_thumb_2_candidate_1 = URI.open('https://www.babelio.com/users/AVT_Emmanuel-MACRON_261.jpg')
candidate_one.photos.attach(io: photo_thumb_2_candidate_1, filename: "photo_thumb_2.jpg", content_type: 'image/jpg')
photo_thumb_3_candidate_1 = URI.open('https://www.gala.fr/imgre/fit/https.3A.2F.2Fi.2Epmdstatic.2Enet.2Fgal.2F2021.2F07.2F30.2F8abf6c2b-5eb5-498f-b9c3-e155cfd14034.2Ejpeg/480x480/quality/80/focus-point/2805%2C1560/emmanuel-macron-pourquoi-il-prend-moins-de-vacances-que-ses-predecesseurs.jpg')
candidate_one.photos.attach(io: photo_thumb_3_candidate_1, filename: "photo_thumb_3.jpg", content_type: 'image/jpg')
photo_thumb_4_candidate_1 = URI.open('https://www.lalibre.be/resizer/NdHf5ezgBKoAzdE6G8cBOwJMYsk=/768x512/filters:quality(70):format(jpg):focal(1275x858:1285x848)/cloudfront-eu-central-1.images.arcpublishing.com/ipmgroup/CAILUDX47ZHYPNTCIUQTTFSUTI.jpg')
candidate_one.photos.attach(io: photo_thumb_4_candidate_1, filename: "photo_thumb_4.jpg", content_type: 'image/jpg')
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
photo_main_candidate_2 = URI.open('https://vsd.fr/images/2017/01/23/fae15786-76b6-4e1e-a3e9-863540a46e72.jpeg')
candidate_two.photos.attach(io: photo_main_candidate_2, filename: "photo_main.jpg", content_type: 'image/jpg')
photo_thumb_1_candidate_2 = URI.open('https://www.babelio.com/users/AVT_Jean-Luc-Melenchon_6547.jpg')
candidate_two.photos.attach(io: photo_thumb_1_candidate_2, filename: "photo_thumb_1.jpg", content_type: 'image/jpg')
photo_thumb_2_candidate_2 = URI.open('https://media.gettyimages.com/photos/politic-jean-luc-melenchon-poses-during-a-photoshoot-on-march-05-2017-picture-id654587626?s=612x612')
candidate_two.photos.attach(io: photo_thumb_2_candidate_2, filename: "photo_thumb_2.jpg", content_type: 'image/jpg')
photo_thumb_3_candidate_2 = URI.open('https://www.babelio.com/users/AVT_Jean-Luc-Melenchon_2189.jpg')
candidate_two.photos.attach(io: photo_thumb_3_candidate_2, filename: "photo_thumb_3.jpg", content_type: 'image/jpg')
photo_thumb_4_candidate_2 = URI.open('https://www.babelio.com/users/AVT_Jean-Luc-Melenchon_5205.jpg')
candidate_two.photos.attach(io: photo_thumb_4_candidate_2, filename: "photo_thumb_4.jpg", content_type: 'image/jpg')
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
photo_main_candidate_3 = URI.open('https://actualitte.com/uploads/images/eric-zemmour-albin-michel-60dabf6274c24859155384.png')
candidate_three.photos.attach(io: photo_main_candidate_3, filename: "photo_main.jpg", content_type: 'image/jpg')
photo_thumb_1_candidate_3 = URI.open('https://www.babelio.com/users/AVT_Eric-Zemmour_317.jpg')
candidate_three.photos.attach(io: photo_thumb_1_candidate_3, filename: "photo_thumb_1.jpg", content_type: 'image/jpg')
photo_thumb_2_candidate_3 = URI.open('https://www.francetvinfo.fr/pictures/DGWggcy0UIeYdR61wTUC5gQ1kgU/750x750/2021/09/09/phpoLKXRS.jpg')
candidate_three.photos.attach(io: photo_thumb_2_candidate_3, filename: "photo_thumb_2.jpg", content_type: 'image/jpg')
photo_thumb_3_candidate_3 = URI.open('https://www.babelio.com/users/AVT_Eric-Zemmour_5343.jpg')
candidate_three.photos.attach(io: photo_thumb_3_candidate_3, filename: "photo_thumb_3.jpg", content_type: 'image/jpg')
photo_thumb_4_candidate_3 = URI.open('https://remeng.rosselcdn.net/sites/default/files/dpistyles_v2/ena_16_9_extra_big/2021/11/30/node_318189/12511016/public/2021/11/30/B9729175706Z.1_20211130133010_000%2BGSAJEEVPJ.4-0.jpg')
candidate_three.photos.attach(io: photo_thumb_4_candidate_3, filename: "photo_thumb_4.jpg", content_type: 'image/jpg')
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
photo_main_candidate_4 = URI.open('https://s1.lemde.fr/media/img/personalities/f609912_1506-ev65kf.6i7wrk9.jpg')
candidate_four.photos.attach(io: photo_main_candidate_4, filename: "photo_main.jpg", content_type: 'image/jpg')
photo_thumb_1_candidate_4 = URI.open('https://images.midilibre.fr/api/v1/images/view/61f956253e45467a60463b1c/full/image.jpg?v=1')
candidate_four.photos.attach(io: photo_thumb_1_candidate_4, filename: "photo_thumb_1.jpg", content_type: 'image/jpg')
photo_thumb_2_candidate_4 = URI.open('https://www.ouest-france.fr/stories/qui-est-philippe-poutou-candidat-dextreme-gauche-a-lelection-presidentielle-de-2022-o0DrtPE/public/ouest-france/cover/qui-est-philippe-poutou-candidat-dextreme-gauche-a-lelection-presidentielle-de-2022-o0DrtPE/928x696.png')
candidate_four.photos.attach(io: photo_thumb_2_candidate_4, filename: "photo_thumb_2.jpg", content_type: 'image/jpg')
photo_thumb_3_candidate_4 = URI.open('https://images.rtl.fr/~c/880v587/rtl/www/1144511-philippe-poutou-est-candidat-a-la-presidentielle-de-2017-pour-le-nouveau-parti-anticapitaliste.jpg')
candidate_four.photos.attach(io: photo_thumb_3_candidate_4, filename: "photo_thumb_3.jpg", content_type: 'image/jpg')
photo_thumb_4_candidate_4 = URI.open('https://static.latribune.fr/article_body/1384258/philippe-poutou.jpg')
candidate_four.photos.attach(io: photo_thumb_4_candidate_4, filename: "photo_thumb_4.jpg", content_type: 'image/jpg')
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
photo_main_candidate_5 = URI.open('https://www.lalibre.be/resizer/O0ftXBvjohFjlz29K4TZiyKE2zQ=/0x0:2555x1705/768x512/filters:quality(70):format(jpg)/cloudfront-eu-central-1.images.arcpublishing.com/ipmgroup/E5R7JMM77BEKZCZ3T3D44BYAQY.jpg')
candidate_five.photos.attach(io: photo_main_candidate_5, filename: "photo_main.jpg", content_type: 'image/jpg')
photo_thumb_1_candidate_5 = URI.open('https://cdni.rt.com/french/images/2016.12/article/584ede0bc36188e7248b4633.jpg')
candidate_five.photos.attach(io: photo_thumb_1_candidate_5, filename: "photo_thumb_1.jpg", content_type: 'image/jpg')
photo_thumb_2_candidate_5 = URI.open('https://tetu.com/wp-content/uploads/2016/07/tetu-valerie-precresse-1024x1024.jpg')
candidate_five.photos.attach(io: photo_thumb_2_candidate_5, filename: "photo_thumb_2.jpg", content_type: 'image/jpg')
photo_thumb_3_candidate_5 = URI.open('https://upload.wikimedia.org/wikipedia/commons/8/8b/Val%C3%A9rie_P%C3%A9cresse_-_%2832605116257%29_%28cropped%29.jpg')
candidate_five.photos.attach(io: photo_thumb_3_candidate_5, filename: "photo_thumb_3.jpg", content_type: 'image/jpg')
photo_thumb_4_candidate_5 = URI.open('https://media.lesechos.com/api/v1/images/view/62023120d286c2701017a336/1280x720/070906828453-web-tete.jpg')
candidate_five.photos.attach(io: photo_thumb_4_candidate_5, filename: "photo_thumb_4.jpg", content_type: 'image/jpg')
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
photo_main_candidate_6 = URI.open('https://www.challenges.fr/assets/img/2021/09/27/cover-r4x3w1000-615336aed0f41-96ae30f1941824a294b109ff46a21d8fa5db7aab-jpg.jpg')
candidate_six.photos.attach(io: photo_main_candidate_6, filename: "photo_main.jpg", content_type: 'image/jpg')
photo_thumb_1_candidate_6 = URI.open('https://reporterre.net/local/cache-vignettes/L720xH480/arton23424-5e477.jpg?1630670796')
candidate_six.photos.attach(io: photo_thumb_1_candidate_6, filename: "photo_thumb_1.jpg", content_type: 'image/jpg')
photo_thumb_2_candidate_6 = URI.open('https://static.lpnt.fr/images/2021/09/29/22260393lpw-22263070-article-jpg_8267589_660x287.jpg')
candidate_six.photos.attach(io: photo_thumb_2_candidate_6, filename: "photo_thumb_2.jpg", content_type: 'image/jpg')
photo_thumb_3_candidate_6 = URI.open('https://resize-parismatch.lanmedia.fr/img/var/news/storage/images/paris-match/actu/politique/yannick-jadot-un-vert-sur-ses-terres-1779110/29230746-1-fre-FR/Yannick-Jadot-un-vert-sur-ses-terres.jpg')
candidate_six.photos.attach(io: photo_thumb_3_candidate_6, filename: "photo_thumb_3.jpg", content_type: 'image/jpg')
photo_thumb_4_candidate_6 = URI.open('https://focus.nouvelobs.com/2021/06/29/990/0/3761/1874/1200/630/60/0/3b1b4d9_284424787-iorgis-matyassy-yannick-jadot-hd-22.jpeg')
candidate_six.photos.attach(io: photo_thumb_4_candidate_6, filename: "photo_thumb_4.jpg", content_type: 'image/jpg')
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
photo_main_candidate_7 = URI.open('https://www.lamontagne.fr/photoSRC/Gw--/helenethouy1-crediter-alexandra-mocanu_5849867.jpeg')
candidate_seven.photos.attach(io: photo_main_candidate_7, filename: "photo_main.jpg", content_type: 'image/jpg')
photo_thumb_1_candidate_7 = URI.open('https://upload.wikimedia.org/wikipedia/commons/7/73/Helene_Thouy_%28cropped%29.jpg')
candidate_seven.photos.attach(io: photo_thumb_1_candidate_7, filename: "photo_thumb_1.jpg", content_type: 'image/jpg')
photo_thumb_2_candidate_7 = URI.open('https://cdn.radiofrance.fr/s3/cruiser-production/2021/07/558c7ba5-7188-4471-8290-a1314385541f/1200x680_000_9dn2v3.jpg')
candidate_seven.photos.attach(io: photo_thumb_2_candidate_7, filename: "photo_thumb_2.jpg", content_type: 'image/jpg')
photo_thumb_3_candidate_7 = URI.open('https://www.divergence-images.com/wimages/800-800/1620890.jpg')
candidate_seven.photos.attach(io: photo_thumb_3_candidate_7, filename: "photo_thumb_3.jpg", content_type: 'image/jpg')
photo_thumb_4_candidate_7 = URI.open('https://i.f1g.fr/media/eidos/630x354_crop/2022/01/31/XVM2b3723b8-82b0-11ec-901b-95a957980056.jpg')
candidate_seven.photos.attach(io: photo_thumb_4_candidate_7, filename: "photo_thumb_4.jpg", content_type: 'image/jpg')
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
photo_main_candidate_8 = URI.open('https://cdn.radiofrance.fr/s3/cruiser-production/2017/03/73712371-d227-4576-a0b8-d3628161fa90/1136_francois_asselineau000_mq2gv.jpg')
candidate_eight.photos.attach(io: photo_main_candidate_8, filename: "photo_main.jpg", content_type: 'image/jpg')
photo_thumb_1_candidate_8 = URI.open('https://img.lamontagne.fr/39En4PMbnEt9DAlU-V70PHp1jWXLtMCshKcG847WApg/fit/657/438/sm/0/bG9jYWw6Ly8vMDAvMDAvMDQvNDQvNTMvMjAwMDAwNDQ0NTM4Ng.jpg')
candidate_eight.photos.attach(io: photo_thumb_1_candidate_8, filename: "photo_thumb_1.jpg", content_type: 'image/jpg')
photo_thumb_2_candidate_8 = URI.open('https://www.sudinfo.be/sites/default/files/dpistyles_v2/ena_sp_16_9_illustration_principale/2021/02/05/node_358803/46722706/public/2021/02/05/B9726049730Z.1_20210205164104_000+GQAHHKNSP.2-0.jpg?itok=PMbnfqlu1612570221')
candidate_eight.photos.attach(io: photo_thumb_2_candidate_8, filename: "photo_thumb_2.jpg", content_type: 'image/jpg')
photo_thumb_3_candidate_8 = URI.open('https://i.la-croix.com/x/smart/2017/04/14/1200839638/Francois-Asselineau_0.jpg')
candidate_eight.photos.attach(io: photo_thumb_3_candidate_8, filename: "photo_thumb_3.jpg", content_type: 'image/jpg')
photo_thumb_4_candidate_8 = URI.open('https://cloudfront-eu-central-1.images.arcpublishing.com/leparisien/U75VAYQSN6SOZYAD3LLFGLG4BY.jpg')
candidate_eight.photos.attach(io: photo_thumb_4_candidate_8, filename: "photo_thumb_4.jpg", content_type: 'image/jpg')
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
book1.candidate = candidate_one
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

puts '----------Generating reviews----------'
puts '----------Interrogating customers----------'
review_one = Review.new(
  comment: "Emmanuel Macron, dont une des expressions favorites est ' et en même temps', pourrait se reconnaître dans le mouvement de balancier d'une horloge suisse. ",
  rating: 7,
  booking: book1
)
review_one.save
review_two = Review.new(
  comment: "J'ai entendu un président de la République qui n'est pas face aux Français, mais un président de la République qui est avec les Français",
  rating: 9,
  booking: book1
)
review_two.save
review_three = Review.new(
  comment: "Un macron enjôleur, on dit qu'il a le sens de l'écoute, peut-être, mais cela ne change rien s'il a décidé de faire autrement. Macron manipulateur, orgueilleux, charmeur, opportuniste, très certainement. Macron c'est Dieu !",
  rating: 3,
  booking: book1
)
review_three.save

puts '----------Writting it up----------'

puts 'All done, go and hire a candidate'
