class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :description
      t.integer :year
      t.string :url_image

      t.timestamps
    end
  end
end
