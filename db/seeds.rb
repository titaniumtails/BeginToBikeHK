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
  [ "Tai Po", "青衣" ],
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
