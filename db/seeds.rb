# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
hongkong_list = [
  [ "Aberdeen", "香港仔" ],
  [ "Ap Lei Chau", "鴨脷洲" ],
  [ "Causeway Bay", "銅鑼灣" ],
  [ "Central", "中環" ],
  [ "Chai Wan", "柴灣" ],
  [ "Deep Water Bay", "深水灣" ],
  [ "Fortress Hill", "炮台山" ],
  [ "Heng Fa Chuen", "杏花邨" ],
  [ "Kennedy Town", "堅尼地城" ],
  [ "Kornhill", "康怡花園" ],
  [ "Middle Island", "熨波洲" ],
  [ "Mid-Levels", "半山區" ],
  [ "North Point", "北角" ],
  [ "Ng Fan Chau", "五分洲" ],
  [ "The Peak", "太平山" ],
  [ "Pok Fu Lam", "薄扶林" ],
  [ "Repulse Bay", "淺水灣" ],
  [ "Round Island", "銀洲" ],
  [ "Quarry Bay", "鰂魚涌" ],
  [ "Sai Ying Pun", "西營盤" ],
  [ "Shau Kei Wan", "筲箕灣" ],
  [ "Shek O", "石澳" ],
  [ "Shek Tong Tsui", "石塘嘴" ],
  [ "Sheung Wan", "上環" ],
  [ "Shouson Hill", "壽臣山" ],
  [ "Stanley", "赤柱" ],
  [ "Taikoo Shing", "太古城" ],
  [ "Tai Tau Chau", "大頭洲" ],
  [ "Tau Chau", "頭洲" ],
  [ "Wah Fu", "華富" ],
  [ "Wan Chai", "灣仔區" ],
  [ "Wong Chuk Hang", "黃竹坑" ],
]

kowloon_list = [
  [ "Choi Hung Estate", "彩虹邨" ],
  [ "Diamond Hill", "鑽石山" ],
  [ "Ho Man Tin", "何文田" ],
  [ "Hung Hom", "紅磡" ],
  [ "Jordan", "佐敦" ],
  [ "Kowloon Bay", "九龍灣" ],
  [ "Kowloon City", "九龍城" ],
  [ "Kowloon Tong", "九龍塘" ],
  [ "Kwun Chung", "官涌" ],
  [ "Kwun Tong", "觀塘" ],
  [ "Lok Fu", "樂富" ],
  [ "Mei Foo", "美孚" ],
  [ "Mong Kok", "旺角" ],
  [ "Prince Edward", "太子" ],
  [ "Sham Shui Po", "深水埗" ],
  [ "Tai Kok Tsui", "大角嘴" ],
  [ "Tai Wai", "大圍" ],
  [ "Tsim Sha Tsui", "尖沙咀" ],
  [ "Wong Tai Sin", "黃大仙" ],
  [ "Yau Ma Tei", "油麻地" ],
]

nt_list = [
  [ "Chau Tau", "洲頭" ],
  [ "Fanling", "粉嶺" ],
  [ "Fo Tan", "火炭" ],
  [ "Kwai Chung ", "葵涌" ],
  [ "Kwu Tung", "古洞" ],
  [ "Lok Ma Chau", "落馬洲" ],
  [ "Lo Wu", "羅湖" ],
  [ "Ma On Shan", "馬鞍山" ],
  [ "Sai Kung", "西貢" ],
  [ "Science Park", "科學園" ],
  [ "Sha Tin", "沙田" ],
  [ "Sheung Shui", "上水" ],
  [ "Tai Po", "大埔" ],
  [ "Tsing Yi", "太子" ],
  [ "Tseung Kwan O", "將軍澳" ],
  [ "Tsuen Wan", "荃灣區" ],
  [ "Tai Wo", "太和" ],
  [ "Tuen Mun", "屯門區" ],
  [ "Yuen Long", "元朗" ],
]

lantau_list = [
  [ "Chek Lap Kok", "赤鱲角" ],
  [ "Discovery Bay", "愉景灣" ],
  [ "Disneyland Land", "迪士尼樂園" ],
  [ "Lantau", "大嶼山" ],
  [ "Mui Wo", "梅窩" ],
  [ "Tai O", "大澳" ],
  [ "Tung Chung", "東涌" ],
]

islands_list = [
  [ "Cheung Chau", "長洲" ],
  [ "Hei Ling Chau", "喜靈洲" ],
  [ "Sunshine Island", "日光島" ],
  [ "Peaked Hill", "雞翼角" ],
  [ "Kau Yi Chau", "交椅洲" ],
  [ "Lamma Island", "南丫島" ],
  [ "Peng Chau", "坪洲" ],
  [ "Soko Islands", "索罟群島" ],
 ]

hongkong_list.each do |place|
  place.push("Hong Kong Island", "香港島")
  District.create( :eng_name => place[0], :chi_name => place[1], :eng_region => place[2], :chi_region => place[3], )
end

kowloon_list.each do |place|
  place.push("Kowloon", "九龍")
  District.create( :eng_name => place[0], :chi_name => place[1], :eng_region => place[2], :chi_region => place[3], )
end

nt_list.each do |place|
  place.push("New Territories", "新界")
  District.create( :eng_name => place[0], :chi_name => place[1], :eng_region => place[2], :chi_region => place[3], )
end

lantau_list.each do |place|
  place.push("Lantau Island", "大嶼山")
  District.create( :eng_name => place[0], :chi_name => place[1], :eng_region => place[2], :chi_region => place[3], )
end

islands_list.each do |place|
  place.push("Outlying Islands", "離島區")
  District.create( :eng_name => place[0], :chi_name => place[1], :eng_region => place[2], :chi_region => place[3], )
end

BikeRoute.create(
  name:'Sha Tin to Tai Po',
  from:'Sha Tin Central Park, outside New Town Plaza'
  from_lng:'114.189988',
  from_lat:'22.379681', 
  from_district:'Sha Tin',
  to:'Tai Po Waterfront Park',
  to_lng:'114.192700',
  to_lat:'22.451276', 
  to_district: 'Tai Po',
  difficulty:'Beginner',
  distance: '16000'
  date: '2014-05-15',
  best_tod: '8 AM - 11AM',
  mtb: false,
  comments: 'Near the end of the Pak Shek Kok Promenade there is an open-air café providing simple meals and drinks.',
  user_generated: true,
  warning: 'This route is quite busy with pedestrians on the weekends. It is recommended to go early in the mornings or on weekdays.',
  description: 'This route passes beautiful mountain and coastal scenery in the New Territories and includes the Tolo Harbour Cycling Track -- the most picturesque cycling route in Hong Kong',
  ranking: 4
)
BikeRoute.create(
  name:'Tai Po to Tai Mei Tuk (Plover Clove Reservoir)',
  from:'Tai Po Waterfront Park'
  from_lng:'114.17902865',
  from_lat:'22.45244597', 
  from_district:'Tai Po',
  to:'Tai Mei Tuk',
  to_lng:'114.248065',
  to_lat:'22.455167', 
  to_district:'Tai Po',
  difficulty:'Beginner',
  distance: '9000'
  date: '2014-05-30',
  best_tod: 'Before 12PM or after 4PM',
  mtb: false,
  comments: 'It isn’t until near Tai Mei Tuk that simple food stores and eateries are available. Stock up with food and water in Tai Po if necessary. Near Plover Cove there is a village of Thai restaurants, which can be a great end to your ride.',
  user_generated: true,
  warning: 'Be careful of cars along this ride, and tends to get crowded on the weekends.',
  description: 'Here you will enjoy a cool ride on a huge dam with views of Tolo Harbour and Plover Cove. Tai Mei Tuk is a popular escape for urban dwellers. Ride along Yuen Sin Road across local villages and sites. At Tai Mei Tuk or Plover Cove Reservoir Dam, enjoy barbeques, water sports and kite flying. go up a slope onto the main dam of Plover Clove Reservoir. You can cycle across the dam and back for a view of the magnificent vast blue waters.',
  ranking: 3
)
BikeRoute.create(
  name:'Hong Kong Longest Cycling Path',
  from:'Sha Tin Central Park',
  from_lng:'114.189988',
  from_lat:'22.379681', 
  from_district:'Sha Tin',
  to:'Tai Mei Tuk',
  to_lng:'114.248065',
  to_lat:'22.455167', 
  to_district:'Tai Po',
  difficulty:'Intermediate',
  distance: '25000'
  date: '2014-06-5',
  best_tod: 'Before 12PM or after 4PM',
  mtb: false,
  comments: 'Near the end of the Pak Shek Kok Promenade there is an open-air café providing simple meals and drinks.  It isn’t until near Tai Mei Tuk that simple food stores and eateries are available. Stock up with food and water in Tai Po if necessary. Near Plover Cove there is a village of Thai restaurants, which can be a great end to your ride.',
  user_generated: true,
  warning: 'Be careful of cars and pedestrains along this ride, and tends to get crowded on the weekends.',
  description: 'This is a leisurely cycle is a good extension to the Sha Tin to Tai Po route, taking you all the way to Tai Mei Tuk, the ultimate end of the Sha Tin-Tolo Harbour cycling track. You can enjoy a cool ride on a huge dam with views of Tolo Harbour and Plover Cove. Tai Mei Tuk is a popular escape for urban dwellers.',
  ranking: 2
)
BikeRoute.create(
  name:'Mui Wo to Cheung Sha Beach, Lantau',
  from:'Mui Wo',
  from_lng:'114.001026',
  from_lat:'22.263940', 
  from_district:'Mui Wo'
  to:'Cheung Sha Beach',
  to_lng:'113.946127',
  to_lat:'22.232946', 
  to_district:'Lantau',
  difficulty:'Advanced',
  distance: '8400'
  date: '2014-04-5',
  mtb: false,
  comments: 'Be sure to bring along your snacks and water, which you can buy from Park\'n\'shop at the start of the ride. There won\'t be anything available at the beach at the end of your ride.',
  user_generated: true,
  warning: 'Be careful of cars along the road, as this path follows the road. Helmets',
  description: 'For a good workout that takes in some of south Lantau’s beautiful scenery by bike, follow the road out of Mui Wo, up to Nam Shan, Pui Wo and as far as Cheung Sha beach. The route is about 8-9km each way and involves some hilly stretches, starting with a challenging uphill climb from Mui Wo, but this is balanced with a well deserved 2km descent on the other side and promises of sandy beaches and cool drinks at Cheung Sha. The route leads through some buffalo filled fields, but mostly it follows the road, so helmets are strongly advised.',
  ranking: 5
)
BikeRoute.create(
  name:'Tung Chung to Disneyland Lake and return',
  from:'Tung Chung',
  from_lng:'113.941267',
  from_lat:'22.289250', 
  from_district:'Tung Chung',

  to:'Inspiration Lake, Hong Kong Disneyland',
  to_lng:'114.037452',
  to_lat:'22.319695', 
  to_district:'Disneyland',
  difficulty:'Intermediate',
  distance: '15000'
  date: '2014-04-5',
  mtb: false,
  comments: 'At Inspiration Lake there is a small 7-11 to buy snacks, and it would be good to bring your bike lock & chain, to be able to make use of the snack bar facilities, a boat ride on the lake, before cycling back to Tung Chung.',
  user_generated: true,
  warning: 'Be careful of cars along the road',
  description: 'The Hong Kong Disney Land area is served by a very good bike route from Tung Chung. The 15km journey is flat and easy going, with notably quiet roads and good views opening out over the coast. The most challenging part is the middle. Follow the MTR track most of the way and head to Inspiration Lake where your well deserved rest area includes water fountains, water jets- and the option of hiring a paddle boat to go out on the lake.',
  ranking: 6
)
BikeRoute.create(
  name:'Tour de Cheung Chau Circuit',
  from:'Cheung Chau',
  from_lng:'114.028655',
  from_lat:'22.208589', 
  from_district:'Cheung Chau',
  to:'Cheung Chau Family Walk',
  to_lng:'114.028655',
  to_lat:'22.208589', 
  to_district:'Cheung Chau',
  difficulty:'Intermediate',
  distance: '12700'
  date: '2014-04-5',
  mtb: false,
  comments: 'The harbourfront can be crowded with residents riding bicycles and tourists being driven by cycle rickshaws, but by bike you can speedily make it to the calmer parts of the island to see the villages, temples, cemeteries, beaches and coastal views. There are steep hills and some steps involved in doing a circuit of the island, so don\'t\ hire a tricycle if you intend to do the circuit.',
  user_generated: false,
  warning: 'Crowded harbourfront on weekends',
  description: 'Cheung Chau is small, car-free and full of bikes, which makes it the ideal place to explore on two wheels. There are some hills, but the highest point on the route is just 85 metres, so it’s quite a relaxing ride which lends itself to leisurely pace, hopping on and off to see the sights and take photos. Do make sure you get out of the main village – head to Kwun Yam Wan Beach and the ‘Little Great Wall’ hiking path, or towards the southwest side of the island around Cheung Po Tsai’s cave (see below). The southern half of the island has a beautiful coastline, with great views out into the South China Sea on a clear day.',
  ranking: 15,
  map_detail:'https://www.google.com.hk/maps/dir/22.2035104,114.0372067/San+Hing+Praya+St/22.2037633,114.0372739/@22.2074577,114.0204903,15z/data=!4m60!4m59!1m15!3m4!1m2!1d114.021965!2d22.1987288!3s0x340156ea8ff46557:0xdbfd36c728da5757!3m4!1m2!1d114.0187775!2d22.2008601!3s0x340156ea29fc7231:0xd14ef923b916f700!3m4!1m2!1d114.0187982!2d22.1985485!3s0x340156c1e3605d49:0x958807721a1418e4!1m40!1m1!1s0x3401568d9ed4c10b:0xb1d6b3750c2c7bb9!2m2!1d114.0285639!2d22.2093801!3m4!1m2!1d114.0268732!2d22.2115568!3s0x3401568ce130e659:0x90129cbd36b7448f!3m4!1m2!1d114.0242963!2d22.213602!3s0x3401568b4e171b35:0x17bafa187d3b55e7!3m4!1m2!1d114.0279747!2d22.2152795!3s0x3401568b9cd7bb19:0x6f5b60c01d45974e!3m4!1m2!1d114.0290944!2d22.212339!3s0x3401568c464bb7d1:0x84bf0e95e9b8c334!3m4!1m2!1d114.0377487!2d22.2077842!3s0x3401568ffd77c4d3:0x1c974912364a4cda!3m4!1m2!1d114.0405311!2d22.2055711!3s0x3401569b28ebedab:0xbc23c191117caa33!3m4!1m2!1d114.0395116!2d22.205641!3s0x3401569ad8fe35a3:0x2dfe564110ddb5ce!1m0!3e2',
)
BikeRoute.create(
  name:'Yuen Long Wetlands & Heritage Loop',
  from:'Yuen Long Railway Station',
  from_lng:'114.034678',
  from_lat:'22.446372', 
  from_district:'Yeun Long',
  to:'Hong Kong Wetlands Park',
  to_lng:'114.034678',
  to_lat:'22.446372', 
  to_district:'Yeun Long',
  difficulty:'Intermediate',
  distance: '25200'
  date: '2014-04-5',
  mtb: true,
  comments: 'This area is excellent for bird watching.',
  user_generated: false,
  warning: 'The road is rough, you are advised to bring a puncture repair kit.',
  description: 'A bicycle ride through the wetlands, old villages and new towns of Hong Kong\'s northwestern New Territories. Unavoidably, the ride starts with a 20-minute crossing of Yuen Long’s housing and industrial estates, most of which will be on bicycle paths. Soon, however, we emerge into the open as we make our way along a series of fish pond dikes. The route ends with brief ride along bicycle paths into the centre of Yuen Long from where comfortable buses depart every few minutes for Kowloon and Hong Kong island.',
  ranking: 1,
  map_detail:'https://www.google.com.hk/maps/dir/22.4446706,114.0335314/22.4736914,114.0041471/22.465221,114.0268595/22.4581428,114.0316109/22.4687931,114.0328544/22.458499,114.045711/22.4505666,114.0455394/22.4464416,114.0387588/@22.4525101,113.9988904,14z/data=!4m45!4m44!1m25!3m4!1m2!1d114.0209728!2d22.4446173!3s0x3403f09e253ef405:0x5efc8714187cbfb5!3m4!1m2!1d114.0171184!2d22.4442938!3s0x3403fa7626a45ec5:0xd4ceb8b660d2cdd4!3m4!1m2!1d114.0158517!2d22.4440644!3s0x3403fa77cc3310cd:0x196c81ceda7a2322!3m4!1m2!1d114.005538!2d22.4447908!3s0x3403fa7f1471facf:0xbf02710e1e99cd69!3m4!1m2!1d114.0081108!2d22.4644012!3s0x3403f08b83fd5acf:0x131c60537973808a!1m10!3m4!1m2!1d114.0122961!2d22.4736802!3s0x3403f0f1bce9c0b3:0x7693d919c9b40f8e!3m4!1m2!1d114.028208!2d22.4695359!3s0x3403f0c174a732d9:0x70221552f7725178!1m0!1m0!1m0!1m0!1m0!1m0!3e2?hl=en',
)
