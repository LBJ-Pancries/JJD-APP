User.create(email: "123@qq.com", password: "123123123", password_confirmation: "123123123")
puts "用户创建完成"

#Facility.create(name: "燃气灶", type: "单眼", size: "400*400*400")
#puts "设备创建完成"

Category.create(name: "A1", description: "54平米，2、3、5、6#楼一层", category_id: "1")
Category.create(name: "A2", description: "51平米，2、3、5#楼二层")
Category.create(name: "A3", description: "40平米，2、3、5#楼三层")
Category.create(name: "C1", description: "87平米，6#楼二层")
Category.create(name: "B1", description: "50平米，1、4#楼一层")
Category.create(name: "B2", description: "52平米，1、4#楼二层")
Category.create(name: "B3", description: "82平米，1、4#楼三层")
puts "户型创建完"
House.create(title: "1#101", description: "单眼灶", category_id: "1")
House.create(title: "1#102", description: "单眼灶", category_id: "1")
House.create(title: "1#201", description: "单眼灶", category_id: "1")
House.create(title: "1#202", description: "单眼灶", category_id: "1")
House.create(title: "1#203", description: "单眼灶", category_id: "1")
House.create(title: "1#204", description: "单眼灶", category_id: "1")
House.create(title: "1#301", description: "单眼灶", category_id: "1")
House.create(title: "1#302", description: "单眼灶", category_id: "1")
puts "1#楼创建完"
