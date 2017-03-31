class AddBreweryToBeers < ActiveRecord::Migration[5.0]
  def change
    add_reference :beers, :brewery, foreign_key: true
  end
end
