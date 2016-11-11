class RenameCaptionToTitleInPosts < ActiveRecord::Migration[5.0]
  def change
  	rename_column :posts, :caption, :title
  end
end
