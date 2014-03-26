class Calendar < ActiveRecord::Base
  validates :title, presence: true
  has_many :images
  has_many :documents
  attr_accessible :id, :title, :subtitle, :fecha, :info, :estado, :detail, :images_attributes, :documents_attributes, as: [:default, :admin] 
  accepts_nested_attributes_for :images, :documents, allow_destroy: true

end
