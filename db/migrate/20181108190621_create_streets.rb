class CreateStreets < ActiveRecord::Migration[5.2]
  def change
    create_table :streets do |t|
      t.integer :mviccalzad
      t.text :mviccat
      t.integer :mvitcla
      t.string :mvitipo
      t.string :mvinombre
      t.string :mvinaltern
      t.string :mvinprinci
      t.string :mvingenera
      t.string :mvinantigu
      t.string :mvietiquet
      t.string :mvisvia
      t.integer :mviciv
      t.integer :shape_leng
      t.string :locnombre
      t.string :locaadmini
      t.float :locarea
      t.string :loccodigo
      t.float :shape_le_1
      t.float :shape_area
      t.column :geom, 'geometry' 
      t.timestamps
    end
  end
end
