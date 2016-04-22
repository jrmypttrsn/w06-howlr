class Howl < ActiveRecord::Base

	validates :text, presence: true
	validates :image_url, presence: true

	belongs_to :wolves

end