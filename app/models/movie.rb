class Movie < ApplicationRecord
  belongs_to :user
  has_attached_file :image,
    :command_path => 'C:\Program Files\ImageMagick-7.0.6-Q16',
    :styles => { :medium => "x300" },
    :default_url => "xxxxx",
    :storage => :s3,
    :bucket => 'xxxxxx'
  
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
