class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def update_temp
    city=City.find(params[:id])

    response=RestClient.get"http://v.juhe.cn/weather/index",
                              :params=>{:cityname=>city.juhe_id,:key=>JUHE_CONFIG["api_key"]}
    data=JSON.parse(response.body)


    city.update(:current_temp=>data["result"]["sk"]["temp"])


    redirect_to cities_path
  end

  def update_temperature
    city=City.find(params[:id])

    response=RestClient.get"http://v.juhe.cn/weather/index",
                              :params=>{:cityname=>city.juhe_id,:key=>JUHE_CONFIG["api_key"]}
    data=JSON.parse(response.body)


    city.update(:current_temperature=>data["result"]["today"]["temperature"])


    redirect_to cities_path
  end

  def update_weather
    city=City.find(params[:id])

    response=RestClient.get"http://v.juhe.cn/weather/index",
                              :params=>{:cityname=>city.juhe_id,:key=>JUHE_CONFIG["api_key"]}
    data=JSON.parse(response.body)


    city.update(:current_weather=>data["result"]["today"]["weather"])


    redirect_to cities_path
  end

  def update_wind
    city=City.find(params[:id])

    response=RestClient.get"http://v.juhe.cn/weather/index",
                              :params=>{:cityname=>city.juhe_id,:key=>JUHE_CONFIG["api_key"]}
    data=JSON.parse(response.body)


    city.update(:current_wind=>data["result"]["today"]["wind"])


    redirect_to cities_path
  end

  def update_date
    city=City.find(params[:id])

    response=RestClient.get"http://v.juhe.cn/weather/index",
                              :params=>{:cityname=>city.juhe_id,:key=>JUHE_CONFIG["api_key"]}
    data=JSON.parse(response.body)


    city.update(:current_date=>data["result"]["today"]["date_y"])


    redirect_to cities_path
  end
end
