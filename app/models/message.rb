class Message
	include ActiveModel::Model
	attr_accessor :name, :email, :subject, :content, :type
	validates :name, :email, :subject, :content, :type, presence: true
end
