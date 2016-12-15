class RemoveEmailFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :email
  end
end
