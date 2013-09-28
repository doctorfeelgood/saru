class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.integer :period_id
      t.integer :type
      t.decimal :shift_total, :precision => 8, :scale => 2
      t.decimal :partner_earnings, :precision => 8, :scale => 2
      t.integer :period_id
      t.date :day

      t.timestamps
    end
  end
end
