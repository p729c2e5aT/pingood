class Pin < ApplicationRecord
  acts_as_votable
  belongs_to :user

  has_attached_file :image,
  :path => ":attachment/:id/:style.:extension",
  styles: { medium: "300x300>"},
  default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
