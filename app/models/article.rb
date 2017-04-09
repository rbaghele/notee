class Article < ActiveRecord::Base
	belongs_to :user
	mount_uploader :cover_image, ImageUploader
end
