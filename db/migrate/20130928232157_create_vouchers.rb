class CreateVouchers < ActiveRecord::Migration
  def change
    create_table :vouchers do |t|
      t.string :name
      t.string :descriptions
      t.timestamps
    end
  end
end
