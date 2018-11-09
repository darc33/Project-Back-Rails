class CreateSpatials < ActiveRecord::Migration[5.2]
  def change
    create_table :spatials do |t|
      t.text :auth_name
      t.integer :auth_srid
      t.text :srtext
      t.text :proj4text

      t.timestamps
    end
  end
end
