class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.references :garden, null: false, foreign_key: true
      t.string :name
      t.string :image_url

      t.timestamps
    end
  end
end
