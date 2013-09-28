class CreateBusEntries < ActiveRecord::Migration
  def change
    create_table :bus_entries do |t|
      t.integer :unit_id
      t.integer :operator_id
      t.integer :shift_id
      t.integer :laps
      t.time :average_time
      t.integer :preferent_tickets
      t.integer :adult_tickets
      t.decimal :feria_total_income, :precision => 8, :scale => 2
      t.decimal :feria_tickets, :precision => 8, :scale => 2
      t.decimal :current_preferent_fare, :precision => 8, :scale => 2
      t.decimal :current_adult_fare, :precision => 8, :scale => 2
      t.decimal :current_feria_fare, :precision => 8, :scale => 2
      t.integer :total_tickets
      t.decimal :total_income, :precision => 8, :scale => 2
      t.decimal :average_income, :precision => 8, :scale => 2
      t.integer :worked_hours
      t.integer :extra_hours
      t.decimal :operator_salary, :precision => 8, :scale => 2
      t.decimal :diesel_liters, :precision => 8, :scale => 2
      t.decimal :diesel_price, :precision => 8, :scale => 2
      t.decimal :unit_expenses, :precision => 8, :scale => 2
      t.decimal :other_expenses, :precision => 8, :scale => 2
      t.string :other_expenses_description

      t.timestamps
    end
  end
end
