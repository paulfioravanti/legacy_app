class AddFeaturedImages < ActiveRecord::Migration
  def self.up
    create_table :featured_images do |t|
      t.datetime :feature_at, null: false
      t.integer :image_id, null: false
      t.timestamps
    end

    add_index :featured_images, :image_id
  end

  def self.down
    drop_table :featured_images
  end
end