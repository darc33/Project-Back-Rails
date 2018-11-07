class CreateUsers < ActiveRecord::Migration[5.2]
	def change
		create_table :users do |t|
			t.string :name
			t.string :lastname
			t.integer :phone
			t.string :gender
			t.string :entity
			t.string :cedula

			t.references :role, foreign_key: true, default: 1
			

			t.timestamps
		end
	end
end
