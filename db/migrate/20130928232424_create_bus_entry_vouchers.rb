class CreateBusEntryVouchers < ActiveRecord::Migration
  def change
    create_table :bus_entry_vouchers do |t|
      t.integer :voucher_id
      t.integer :bus_entry_id
      t.decimal :amount, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
