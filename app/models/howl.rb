class Howl < ActiveRecord::Base

	validates :text, presence: true
	validates :image, presence: true

	belongs_to :wolves

end