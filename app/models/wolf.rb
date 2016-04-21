class Wolf < ActiveRecord::Base

	validates :name, presence: true
	validates :name, uniqueness: true
	validates :description, presence: true
	validates :image, presence: true

	has_many :howls

end