class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.string :sincodigo
      t.text :sinnombre
      t.integer :sincategor
      t.integer	:sintactivi
      t.string :sindirecci
      t.string :sintelefon
      t.string :sinpintern
      t.integer :sinnimport
      t.string :locnombre
      t.string :locaadmini
      t.float :locarea
      t.integer :loccodigo
      t.float :shape_leng
      t.float :shape_area
      t.column :geom, 'geometry' 

      t.timestamps
    end
  end
end
