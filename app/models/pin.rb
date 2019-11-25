class Pin < ApplicationRecord
  acts_as_votable
  belongs_to :user

  has_attached_file :image, styles: { medium: "300x300>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/,
  :storage => :s3,
  :s3_permissions  => :public,
  :s3_credentials  => "#{Rails.root}/config/s3.yml",
  :path => ":attachment/:id/:style.:extension"
  
end
