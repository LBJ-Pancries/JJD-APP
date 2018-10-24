User.create(email: "123@qq.com", password: "123123123", password_confirmation: "123123123")
puts "用户创建完成"

#Facility.create(name: "燃气灶", type: "单眼", size: "400*400*400")
#puts "设备创建完成"

Category.create(name: "A1", description: "54平米，2、3、5、6#楼一层，共8户，单眼灶")
Category.create(name: "A2", description: "51平米，2、3、5#楼二层，共6户，单眼灶")
Category.create(name: "A3", description: "40平米，2、3、5#楼三层，共6户，单眼灶")
Category.create(name: "C1", description: "87平米，6#楼二层，共2户，单眼灶")
Category.create(name: "B1", description: "50平米，1、4#楼一层，共4户，单眼灶")
Category.create(name: "B2", description: "52平米，1、4#楼二层，共8户，单眼灶")
Category.create(name: "B3", description: "82平米，1、4#楼三层，共4户，双眼灶")
puts "户型创建完"

House.create(title: "1#101", description: "单眼灶", category_id: "5")
House.create(title: "1#102", description: "单眼灶", category_id: "5")
House.create(title: "1#201", description: "单眼灶", category_id: "6")
House.create(title: "1#202", description: "单眼灶", category_id: "6")
House.create(title: "1#203", description: "单眼灶", category_id: "6")
House.create(title: "1#204", description: "单眼灶", category_id: "6")
House.create(title: "1#301", description: "单眼灶", category_id: "7")
House.create(title: "1#302", description: "单眼灶", category_id: "7")
puts "1#楼创建完"
House.create(title: "4#101", description: "加装一排60公分宽的橱柜，南侧顶着墙", category_id: "5")
House.create(title: "4#102", description: "单眼灶", category_id: "5")
House.create(title: "4#201", description: "单眼灶", category_id: "6")
House.create(title: "4#202", description: "单眼灶", category_id: "6")
House.create(title: "4#203", description: "单眼灶", category_id: "6")
House.create(title: "4#204", description: "单眼灶", category_id: "6")
House.create(title: "4#301", description: "单眼灶", category_id: "7")
House.create(title: "4#302", description: "单眼灶", category_id: "7")
puts "4#楼创建完"
House.create(title: "2#101", description: "单眼灶", category_id: "1")
House.create(title: "2#102", description: "单眼灶", category_id: "1")
House.create(title: "2#201", description: "单眼灶", category_id: "2")
House.create(title: "2#202", description: "单眼灶", category_id: "2")
House.create(title: "2#203", description: "单眼灶", category_id: "2")
House.create(title: "2#204", description: "单眼灶", category_id: "2")
House.create(title: "2#301", description: "单眼灶", category_id: "3")
House.create(title: "2#302", description: "单眼灶", category_id: "3")
puts "2#楼创建完"
House.create(title: "3#101", description: "单眼灶", category_id: "1")
House.create(title: "3#102", description: "单眼灶", category_id: "1")
House.create(title: "3#201", description: "单眼灶", category_id: "2")
House.create(title: "3#202", description: "单眼灶", category_id: "2")
House.create(title: "3#203", description: "单眼灶", category_id: "2")
House.create(title: "3#204", description: "单眼灶", category_id: "2")
House.create(title: "3#301", description: "单眼灶", category_id: "3")
House.create(title: "3#302", description: "单眼灶", category_id: "3")
puts "3#楼创建完"
House.create(title: "5#101", description: "单眼灶", category_id: "1")
House.create(title: "5#102", description: "单眼灶", category_id: "1")
House.create(title: "5#201", description: "单眼灶", category_id: "2")
House.create(title: "5#202", description: "单眼灶", category_id: "2")
House.create(title: "5#203", description: "单眼灶", category_id: "2")
House.create(title: "5#204", description: "单眼灶", category_id: "2")
House.create(title: "5#301", description: "单眼灶", category_id: "3")
House.create(title: "5#302", description: "单眼灶", category_id: "3")
puts "5#楼创建完"
puts "3#楼创建完"
House.create(title: "6#101", description: "单眼灶", category_id: "1")
House.create(title: "6#102", description: "单眼灶", category_id: "1")
House.create(title: "6#201", description: "单眼灶", category_id: "4")
House.create(title: "6#202", description: "单眼灶", category_id: "4")
puts "5#楼创建完"
