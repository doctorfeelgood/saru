class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.integer :period_number
      t.date :beginning_date
      t.date :end_date
      t.string :duration
      t.string :status
      t.string :file_name
      t.decimal :total, :precision => 8, :scale => 2
      t.decimal :diesel_total, :precision => 8, :scale => 2
      t.string :ledger_account

      t.timestamps
    end
  end
end
