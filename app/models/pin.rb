class Pin < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image, :styles => { :medium => "300x300", :thumb => "100x100"}

  validates :image, presence: true
  validates :description, presence: true, length: { maximum: 140, too_long: "is too long. %{count} characters is the limit."}
end
