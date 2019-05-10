class AddSeasonToShows < ActiveRecord::Migration[5.2]
  create_column (:shows, :season, :string)
end
