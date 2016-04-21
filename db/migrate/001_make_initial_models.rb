class MakeInitialModels < ActiveRecord::Migration

	def change
		create_table :howls do |t|
			t.string :name, null: false
			t.string :description, null: false
			t.string :image_url, null: false
		end
	

		create_table :wolves do |t|
			t.string :text, null: false
			t.string :image_url, null: false
			t.timestamps null: true
		end
	end
end