User.create(email: "123@qq.com", password: "123123123", password_confirmation: "123123123")

Category.create(name: "A1", description: "54平米，2、3、5、6#楼一层", house_id: "1")
Category.create(name: "A2", description: "51平米，2、3、5#楼二层", house_id: "1")
Category.create(name: "A3", description: "40平米，2、3、5#楼一层", house_id: "1")
Category.create(name: "C1", description: "87平米，6#楼二层", house_id: "1")
Category.create(name: "B1", description: "50平米，1、4#楼一层", house_id: "1")
Category.create(name: "B2", description: "52平米，1、4#楼二层", house_id: "1")
Category.create(name: "B3", description: "82平米，1、4#楼三层", house_id: "1")

House.create(title: "1#101", description: "单眼灶，木地板：面积18平方，地暖（霍尔曼）：铝箔面积14平方，网格系列16平方，热水器（林内）：1台，浴霸、换气扇（奥普）：1台", category_id: "1")
