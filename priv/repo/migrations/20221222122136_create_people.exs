defmodule TacoTrucks.Repo.Migrations.CreatePeople do
  use Ecto.Migration

  def change do
      create table(:taco_trucks) do
      add(:restaurant_name, :string)
      add(:facility_type, :string)
      add(:address, :string)
      add(:location_description, :text)
      add(:food_items, :text)
      add(:latitude, :string)
      add(:longitude, :string)
      add(:zip_codes, :string)
      add(:location, :string)
      timestamps(type: :utc_datetime_usec)
    end

  end
end
