class AddIsDraftToPost < ActiveRecord::Migration[5.0]
  def change
  	add_column :posts, :is_drafted, :boolean
  end
end
