class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.belongs_to :camera, index:true
      t.belongs_to :location, index:true
      t.belongs_to :user, index:true
      t.integer :exposure
      t.string :summary
      t.text :story
      t.text :comments
      t.timestamp :created_at
      t.timestamp :updated_at
      t.integer :updated_by
      t.integer :updated_count, :default => 0
      t.boolean :is_user_editable, :default => true
      t.timestamps null: false
    end
  end
end
