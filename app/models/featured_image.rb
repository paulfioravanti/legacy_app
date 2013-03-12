class FeaturedImage < ActiveRecord::Base

  attr_accessible :feature_at

  belongs_to :image

  validates_presence_of :feature_at, :image_id

  scope :before_date,
        lambda { |date| { conditions: ['feature_at < ?', date] } }

  def self.current
    feature_image = self.before_date(Time.now).
                    first(order: 'feature_at DESC')
    feature_image.try :image
  end
end