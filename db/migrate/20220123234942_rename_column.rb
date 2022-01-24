class RenameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :sightings, :anima_id, :animal_id
  end
end
