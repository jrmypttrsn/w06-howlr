class AddWolfIdColumnToHowlsTable < ActiveRecord::Migration

	def change
		add_column :howls, :wolf_id, :integer, null: false
	end

end