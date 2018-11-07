class CreateRegistries < ActiveRecord::Migration[5.2]
	def change
		create_table :registries do |t|
			t.string :type_r
			t.text :initial_direction
			t.text :final_direction
			t.integer :no_consultas
			t.column :linestring, 'polygon'

			t.references :user, foreign_key: true
			

			t.timestamps
		end
	end
end
