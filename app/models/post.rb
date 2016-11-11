class Post < ActiveRecord::Base  
	acts_as_votable

	belongs_to :user  
	has_many :comments, dependent: :destroy
	validates :user_id, presence: true  
	validates :image, presence: true
	validates :caption, length: { minimum: 3, maximum: 300 }

	has_attached_file :image, styles: { :medium => "640x", large: '1000x1000>' }
	validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end  