# encoding: utf-8
class ImageUploader < CarrierWave::Uploader::Base

    include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process :resize_to_limit => [200, 200]
  end

  version :desaturated do
    process :saturate => 0
  end

  def saturate(amount)
    manipulate! do |img|
      img.modulate "100,#{amount},100"
      img = yield(img) if block_given?
      img
    end
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end

