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
  from_district[0]:'Sha Tin',
  from_district[1]:'沙田',
  to:'Tai Po Waterfront Park',
  to_district[0]:'Tai Po',
  to_district[1]:'大埔',
  difficulty:'Beginner',
  distance: '16000'
  date: '2014-05-15',
  best_tod: '8 AM - 11AM',
  mtb: false,
  comments: 'Near the end of the Pak Shek Kok Promenade there is an open-air café providing simple meals and drinks.',
  user_generated: true,
  warning: 'This route is quite busy with pedestrians on the weekends. It is recommended to go early in the mornings or on weekdays.',
  warning_thumb: 'pedestrains', 'busyweekend'
  description: 'This route passes beautiful mountain and coastal scenery in the New Territories and includes the Tolo Harbour Cycling Track -- the most picturesque cycling route in Hong Kong',
  ranking: 4
)
BikeRoute.create(
  name:'Tai Po to Tai Mei Tuk (Plover Clove Reservoir)',
  from:'Tai Po Waterfront Park'
  from_lng:'114.17902865',
  from_lat:'22.45244597', 
  from_district[0]:'Tai Po',
  from_district[1]:'大埔',
  to:'Tai Mei Tuk',
  to_district[0]:'Tai Po',
  to_district[1]:'大埔',
  difficulty:'Beginner',
  distance: '9000'
  date: '2014-05-30',
  best_tod: 'Before 12PM or after 4PM',
  mtb: false,
  comments: 'It isn’t until near Tai Mei Tuk that simple food stores and eateries are available. Stock up with food and water in Tai Po if necessary. Near Plover Cove there is a village of Thai restaurants, which can be a great end to your ride.',
  user_generated: true,
  warning: 'Be careful of cars along this ride, and tends to get crowded on the weekends.',
  warning_thumb: 'cars', 'pedestrains', 'busyweekend'
  description: 'Here you will enjoy a cool ride on a huge dam with views of Tolo Harbour and Plover Cove. Tai Mei Tuk is a popular escape for urban dwellers. Ride along Yuen Sin Road across local villages and sites. At Tai Mei Tuk or Plover Cove Reservoir Dam, enjoy barbeques, water sports and kite flying. go up a slope onto the main dam of Plover Clove Reservoir. You can cycle across the dam and back for a view of the magnificent vast blue waters.',
  ranking: 3
)
BikeRoute.create(
  name:'Hong Kong Longest Cycling Path',
  from:'Sha Tin Central Park',
  from_lng:'114.189988',
  from_lat:'22.379681', 
  from_district[0]:'Sha Tin',
  from_district[1]:'沙田',
  to:'Tai Mei Tuk',
  to_district[0]:'Tai Po',
  to_district[1]:'大埔',
  difficulty:'Intermediate',
  distance: '25000'
  date: '2014-06-5',
  best_tod: 'Before 12PM or after 4PM',
  mtb: false,
  comments: 'Near the end of the Pak Shek Kok Promenade there is an open-air café providing simple meals and drinks.  It isn’t until near Tai Mei Tuk that simple food stores and eateries are available. Stock up with food and water in Tai Po if necessary. Near Plover Cove there is a village of Thai restaurants, which can be a great end to your ride.',
  user_generated: true,
  warning: 'Be careful of cars and pedestrains along this ride, and tends to get crowded on the weekends.',
  warning_thumb: 'cars', 'pedestrains', 'busyweekend'
  description: 'This is a leisurely cycle is a good extension to the Sha Tin to Tai Po route, taking you all the way to Tai Mei Tuk, the ultimate end of the Sha Tin-Tolo Harbour cycling track. You can enjoy a cool ride on a huge dam with views of Tolo Harbour and Plover Cove. Tai Mei Tuk is a popular escape for urban dwellers.',
  ranking: 2
)
BikeRoute.create(
  name:'Mui Wo to Cheung Sha Beach, Lantau',
  from:'Mui Wo',
  from_lng:'114.001026',
  from_lat:'22.263940', 
  from_district[0]:'Mui Wo'
  from_district[1]:'梅窩'
  to:'Cheung Sha Beach',
  to_district[2]:'Lantau',
  to_district[3]:'大嶼山',
  difficulty:'Advanced',
  distance: '8400'
  date: '2014-04-5',
  mtb: false,
  comments: 'Be sure to bring along your snacks and water, which you can buy from Park\'n\'shop at the start of the ride. There won\'t be anything available at the beach at the end of your ride.',
  user_generated: true,
  warning: 'Be careful of cars along the road, as this path follows the road. Helmets',
  warning_thumb: 'cars', 'cars',
  description: 'For a good workout that takes in some of south Lantau’s beautiful scenery by bike, follow the road out of Mui Wo, up to Nam Shan, Pui Wo and as far as Cheung Sha beach. The route is about 8-9km each way and involves some hilly stretches, starting with a challenging uphill climb from Mui Wo, but this is balanced with a well deserved 2km descent on the other side and promises of sandy beaches and cool drinks at Cheung Sha. The route leads through some buffalo filled fields, but mostly it follows the road, so helmets are strongly advised.',
  ranking: 5
)
BikeRoute.create(
  name:'Tung Chung to Disneyland Lake Loop',
  from:'Tung Chung',
  from_lng:'114.001026',
  from_lat:'22.263940', 
  from_district[0]:'Tung Chung',
  from_district[1]:'東涌',
  to:'Inspiration Lake, Hong Kong Disneyland',
  to_district[0]:'Disneyland',
  to_district[1]:'迪士尼樂園',
  difficulty:'Advanced',
  distance: '8400'
  date: '2014-04-5',
  mtb: false,
  comments: 'If you’re ready to taxi back to Tung Chung to return the bikes, changing rooms and toilets are available, or make use of the snack bar facilities before cycling back to Tung Chung.',
  user_generated: true,
  warning: 'Be careful of cars along the road, as this path follows the road. Helmets',
  warning_thumb: 'cars',
  description: 'The Hong Kong Disney Land area is served by a very good bike route from Tung Chung. The 15km journey is flat and easy going, with notably quiet roads and good views opening out over the coast. The most challenging part is the middle. Follow the MTR track most of the way and head to Inspiration Lake where your well deserved rest area includes water fountains, water jets- and the option of hiring a paddle boat to go out on the lake.',
  ranking: 6
)
