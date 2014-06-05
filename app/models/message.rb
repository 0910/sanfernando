class Message

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :apodo, :edad, :senas, :vestimenta, :domicilio, :barrio, :calles, :vivienda, :body, :tipo_venta, :tipo_droga, :fecha

  validates :name, :apodo, :edad, :senas, :vestimenta, :domicilio, :barrio, :calles, :vivienda, :body, :tipo_venta, :tipo_droga, :fecha, :presence => true
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end