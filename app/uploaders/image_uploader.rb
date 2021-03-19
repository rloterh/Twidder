class ImageUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick
  include Cloudinary::CarrierWave

  version :standard do
    process resize_to_fill: [700, 400, :north]
  end

  version :cover do
    process resize_to_fill: [818, 240, :north]
  end

  version :medium do
    process resize_to_fit: [100, 100]
  end

  version :profile do
    process resize_to_fill: [96, 96]
  end

  version :thumb do
    process resize_to_fill: [75, 75]
  end

  version :author_photo do
    cloudinary_transformation effect: 'brightness:30', width: 64, height: 64, crop: :thumb, gravity: :face
  end

  version :commentor_photo do
    process resize_to_fill: [56, 56]
  end

  version :user_photo do
    cloudinary_transformation effect: 'brightness:30',
                              width: 75, height: 75, crop: :thumb
  end

  version :follow do
    cloudinary_transformation effect: 'brightness:30', width: 64, height: 64, crop: :thumb
  end

  # Choose what kind of storage to use for this uploader:
  # storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  # def store_dir
  #   "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  # end
  CarrierWave.configure do |config|
    config.cache_storage = :file
  end

  def extension_whitelist
    %w[jpg jpeg gif png]
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url(*args)
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process resize_to_fit: [50, 50]
  # end

  # Add an allowlist of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_allowlist
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end
end
