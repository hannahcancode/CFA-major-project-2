class AddLatitudeAndLongituteToSpace < ActiveRecord::Migration[5.0]
  def change
    add_column :spaces, :latitude, :float
    add_column :spaces, :longitude, :float
  end
end
