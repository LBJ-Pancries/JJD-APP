module HousesHelper
  def render_house_description(house)
    simple_format(house.description)
  end
end
