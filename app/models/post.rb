class Post < ActiveRecord::Base  
	include Bootsy::Container
	acts_as_votable

	belongs_to :user  
	has_many :comments, dependent: :destroy
	validates :user_id, presence: true  
	# validates :image, presence: true
	validates :title, presence: true, length: { minimum: 3, maximum: 120 }
	validates :content, presence: true
	# validates :title, length: { minimum: 3, maximum: 120 }

	has_attached_file :image, styles: { :medium => "640x", large: '1000x1000>' }, default_url: "/posts/:style/missing.png"
	validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end  