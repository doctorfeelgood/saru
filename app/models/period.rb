class Period < ActiveRecord::Base
  attr_accessible :beginning_date, :diesel_total, :duration, :end_date, :file_name, :ledger_account, :period_number, :status, :total
  has_many :shifts
end
