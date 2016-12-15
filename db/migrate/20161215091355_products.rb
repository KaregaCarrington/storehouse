class Products < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.text :desscription
      t.string :image_url
      t.string :category
      t.timestamps
    end
  end
end
