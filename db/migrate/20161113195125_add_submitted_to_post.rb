class AddSubmittedToPost < ActiveRecord::Migration[5.0]
  def change
  	add_column :posts, :submitted, :boolean
  end
end
