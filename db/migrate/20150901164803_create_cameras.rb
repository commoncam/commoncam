class CreateCameras < ActiveRecord::Migration
  def change
    create_table :cameras do |t|
      t.integer :camera_number, unique: true
      t.timestamps null: false
    end
  end
end
