class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.decimal :lat, :precision => 10, :scale => 6, :default => 0
      t.decimal :lng, :precision => 10, :scale => 6, :default => 0
      t.integer :updated_by
      t.integer :updated_count, :default => 0
      t.boolean :is_user_editable, :default => true
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
    add_index :locations, [:user_id, :created_at]
  end
end
