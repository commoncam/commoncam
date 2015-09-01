class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.belongs_to :user, index:true
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.decimal :lat, :precision => 10, :scale => 6, :default => 0
      t.decimal :lng, :precision => 10, :scale => 6, :default => 0
      t.timestamp :created_at
      t.timestamp :updated_at
      t.integer :updated_by
      t.integer :updated_count, :default => 0
      t.boolean :is_user_editable, :default => true
      t.timestamps null: false
    end
  end
end
