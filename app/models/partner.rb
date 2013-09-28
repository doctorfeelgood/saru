class Partner < ActiveRecord::Base
	has_many :units
  	attr_accessible :first_name, :last_name, :address, :phone_number, :email, :rfc
end
