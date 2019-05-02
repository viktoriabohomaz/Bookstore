class Address < ApplicationRecord
  belongs_to :user

  validates_presence_of :address, :zipcode, :city, :phone, :country
  validates_length_of :address, maximum: 50
  validates_format_of :address, with: /[A-z0-9,\s-]/i
  validates_length_of :zipcode, maximum: 10
  validates_format_of :zipcode, with: /[0-9-]/i
  validates_length_of :city, maximum: 50
  validates_format_of :city,  with: /[A-z]/i
  validates_length_of :country, maximum: 50
  validates_format_of :country, with: /[A-z]/i
  validates_length_of :phone, maximum: 15
  validates_format_of :phone, with: /\A[+]\d+/

end
