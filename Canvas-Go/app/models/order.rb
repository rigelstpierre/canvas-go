class Order < ActiveRecord::Base
  attr_accessible :image

  mount_uploader :image, ImageUploader

  validates_presence_of :image, :message => "Don't forget to give us your picture"
end
