class AddDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :type, :string
  	add_column :users, :bio, :string
  end
end