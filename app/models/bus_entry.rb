class BusEntry < ActiveRecord::Base
  attr_accessible :adult_tickets, :average_income, :average_time, :current_adult_fare, :current_feria_fare, :current_preferent_fare, :diesel_liters, :diesel_price, :extra_hours, :feria_tickets, :feria_total_income, :laps, :operator_id, :operator_salary, :other_expenses, :other_expenses_description, :preferent_tickets, :shift_id, :total_income, :total_tickets, :unit_expenses, :unit_id, :worked_hours
  belongs_to :shift
end
