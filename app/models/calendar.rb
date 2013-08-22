class Calendar < ActiveRecord::Base
  validates :title, presence: true
  has_many :images
  attr_accessible :id, :title, :subtitle, :fecha, :info, :estado, :detail, :images_attributes, as: [:default, :admin] 
  accepts_nested_attributes_for :images, allow_destroy: true

end
