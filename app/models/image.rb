# == Schema Information
#
# Table name: images
#
#  id           :integer          not null, primary key
#  size         :integer
#  content_type :string(255)
#  filename     :string(255)
#  height       :integer
#  width        :integer
#  parent_id    :integer
#  thumbnail    :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  caption      :string(255)
#

class Image < ActiveRecord::Base

  attr_accessible :uploaded_data, :caption

  cattr_accessor :thumbnail_sizes do
    { medium: 512, small: 128, tiny: 64 }
  end

  has_many :featured_images, dependent: :destroy

  scope :without_parents, conditions: { parent_id: nil }

  has_attachment storage:    :file_system,
                 size:       1..5.megabytes,
                 processor:  'MiniMagick',
                 background: true,
                 thumbnails: Image.thumbnail_sizes
  validates_presence_of :content_type, :filename
  validate              :attachment_attributes_valid?
end
