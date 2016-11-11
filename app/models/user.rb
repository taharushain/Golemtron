class User < ApplicationRecord
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/users/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
	acts_as_voter
	
	has_many :posts, dependent: :destroy  
	has_many :comments, dependent: :destroy
	validates :user_name, presence: true, length: { minimum: 4, maximum: 16 }  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
end
