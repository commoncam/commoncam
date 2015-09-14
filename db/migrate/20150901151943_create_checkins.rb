class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.integer :exposure
      t.string :summary
      t.text :story
      t.text :comments
      t.integer :updated_by
      t.integer :updated_count, :default => 0
      t.boolean :is_user_editable, :default => true
      t.references :camera, index: true, foreign_key: true
      t.references :location, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
    add_index :checkins, [:user_id, :created_at]
    add_index :checkins, :camera_id
    add_index :checkins, :location_id
  end
end
