class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.string :name
      t.text :description
      t.string :street_number
      t.string :street_name
      t.string :suburb
      t.string :state
      t.string :country
      t.string :postal_code
      t.string :images
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
