class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :post
	validates :content, length: { maximum: 150, too_long: "%{count} characters is the maximum allowed" }
	validates :content, length: { minimum: 4, too_small: "%{count} characters is the minimum allowed" }

end