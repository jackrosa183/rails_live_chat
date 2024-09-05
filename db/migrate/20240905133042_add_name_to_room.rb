class AddNameToRoom < ActiveRecord::Migration[7.2]
  def change
    add_column :rooms, :name, :string
  end
end
