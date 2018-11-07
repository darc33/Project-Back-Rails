class CreateIncidents < ActiveRecord::Migration[5.2]
	def change
		create_table :incidents do |t|
			t.string :name
			t.text :description
			t.column :coordinate, 'point'
			t.integer :status
			t.datetime :initial_datetime
			t.datetime :final_datetime
			t.text :imagen



			t.timestamps
		end
	end
end
