class Shift < ActiveRecord::Base
  attr_accessible :day, :partner_earnings, :period_id, :period_id, :shift_total, :shift_type
  belongs_to :period
  has_many :bus_entries
end
