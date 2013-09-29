class BusEntryVoucher < ActiveRecord::Base
  attr_accessible :amount, :bus_entry_id, :voucher_id
end
