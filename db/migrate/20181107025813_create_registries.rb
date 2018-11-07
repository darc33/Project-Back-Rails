class CreateRegistries < ActiveRecord::Migration[5.2]
	def change
		create_table :registries do |t|
			t.string :type
			t.text :initial_direction
			t.text :final_direction
			t.integer :no_consultas
			t.column :linestring, 'geometry'
			

			t.timestamps
		end
	end
end
