class Pin < ApplicationRecord
  acts_as_votable
  belongs_to :user

  has_attached_file :image, styles: { medium: "300x300>"},
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/,
  :path => ":attachment/:id/:style.:extension",
  default_url: "/images/:style/missing.png" 

  Paperclip::Attachment.default_options[:url] = 'pingood.senn.s3.amazonaws.com'
end
