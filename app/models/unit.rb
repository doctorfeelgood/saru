class Unit < ActiveRecord::Base
  attr_accessible :name, :number, :partner_id
  belongs_to :partner
end
