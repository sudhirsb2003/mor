class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :photo_file_name
      t.float :photo_file_size
      t.string :photo_content_type
      t.datetime :photo_updated_at
      t.integer :event_id

      t.timestamps
    end
  end
end
