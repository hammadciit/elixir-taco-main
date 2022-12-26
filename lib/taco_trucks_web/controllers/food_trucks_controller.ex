defmodule TacoTrucksWeb.FoodTrucksController do
  use TacoTrucksWeb, :controller

  alias TacoTrucks.{
      Repo,
      Restaurant
  }

  def get_all_food_trucks(conn, _) do
    # Calling the restaurant schema function
    all_resturants = Restaurant.get_resturants_list()
    # Render the results in json formate
    conn
    |> put_view(TacoTrucksWeb.FoodTrucksView)
    |> render("index.json", %{all_resturants: all_resturants})
  end
end
