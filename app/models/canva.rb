class Canva < ActiveRecord::Base
  attr_accessible :border, :fancy_edges, :orientation, :rolled_canvas, :size, :image

  mount_uploader :image, ImageUploader
end
