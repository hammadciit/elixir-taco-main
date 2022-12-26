defmodule TacoTrucks.Restaurant do
  use Ecto.Schema
  alias TacoTrucks.Repo

  schema "taco_trucks" do
    field :restaurant_name, :string
    field :facility_type, :string
    field :address, :string
    field :location_description, :string
    field :food_items, :string
    field :latitude, :string
    field :longitude, :string
    field :zip_codes, :string
    field :location, :string
  end

  # get the all resturants record from DB
def get_resturants_list() do
    Repo.all(__MODULE__)  
end

end