defmodule TacoTrucksWeb.FoodTrucksView do
  use TacoTrucksWeb, :view

#   Rendered the results in json formate
  def render("index.json", %{all_resturants: all_resturants}) do
    %{
      all_resturants: render_many(all_resturants, TacoTrucksWeb.FoodTrucksView, "all_resturants.json", as: :resturant),
    }
  end


   def render("all_resturants.json", %{resturant: resturant}) do
    %{
      id: resturant.id,
      restaurant_name: resturant.restaurant_name,
      facility_type: resturant.facility_type,
      address: resturant.address,
      location_description: resturant.location_description,
      food_items: resturant.food_items,
      latitude: resturant.latitude,
      longitude: resturant.longitude,
      zip_codes: resturant.zip_codes,
      location: resturant.location,
      
    }
  end


end


