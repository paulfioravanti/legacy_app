class Image < ActiveRecord::Base

  attr_accessible :uploaded_data, :caption

  cattr_accessor :thumbnail_sizes
  @@thumbnail_sizes = {
    medium: 512,
    small: 128,
    tiny: 64
  }

  has_many :featured_images, dependent: :destroy

  scope :without_parents, conditions: { parent_id: nil }

  has_attachment storage:    :file_system,
                 size:       1..5.megabytes,
                 processor:  'MiniMagick',
                 background: true,
                 thumbnails: Image.thumbnail_sizes
  validates_as_attachment
end
