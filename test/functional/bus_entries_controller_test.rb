require 'test_helper'

class BusEntriesControllerTest < ActionController::TestCase
  setup do
    @bus_entry = bus_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bus_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bus_entry" do
    assert_difference('BusEntry.count') do
      post :create, bus_entry: { adult_tickets: @bus_entry.adult_tickets, average_income: @bus_entry.average_income, average_time: @bus_entry.average_time, current_adult_fare: @bus_entry.current_adult_fare, current_feria_fare: @bus_entry.current_feria_fare, current_preferent_fare: @bus_entry.current_preferent_fare, diesel_liters: @bus_entry.diesel_liters, diesel_price: @bus_entry.diesel_price, extra_hours: @bus_entry.extra_hours, feria_tickets: @bus_entry.feria_tickets, feria_total_income: @bus_entry.feria_total_income, laps: @bus_entry.laps, operator_id: @bus_entry.operator_id, operator_salary: @bus_entry.operator_salary, other_expenses: @bus_entry.other_expenses, other_expenses_description: @bus_entry.other_expenses_description, preferent_tickets: @bus_entry.preferent_tickets, shift_id: @bus_entry.shift_id, total_income: @bus_entry.total_income, total_tickets: @bus_entry.total_tickets, unit_expenses: @bus_entry.unit_expenses, unit_id: @bus_entry.unit_id, worked_hours: @bus_entry.worked_hours }
    end

    assert_redirected_to bus_entry_path(assigns(:bus_entry))
  end

  test "should show bus_entry" do
    get :show, id: @bus_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bus_entry
    assert_response :success
  end

  test "should update bus_entry" do
    put :update, id: @bus_entry, bus_entry: { adult_tickets: @bus_entry.adult_tickets, average_income: @bus_entry.average_income, average_time: @bus_entry.average_time, current_adult_fare: @bus_entry.current_adult_fare, current_feria_fare: @bus_entry.current_feria_fare, current_preferent_fare: @bus_entry.current_preferent_fare, diesel_liters: @bus_entry.diesel_liters, diesel_price: @bus_entry.diesel_price, extra_hours: @bus_entry.extra_hours, feria_tickets: @bus_entry.feria_tickets, feria_total_income: @bus_entry.feria_total_income, laps: @bus_entry.laps, operator_id: @bus_entry.operator_id, operator_salary: @bus_entry.operator_salary, other_expenses: @bus_entry.other_expenses, other_expenses_description: @bus_entry.other_expenses_description, preferent_tickets: @bus_entry.preferent_tickets, shift_id: @bus_entry.shift_id, total_income: @bus_entry.total_income, total_tickets: @bus_entry.total_tickets, unit_expenses: @bus_entry.unit_expenses, unit_id: @bus_entry.unit_id, worked_hours: @bus_entry.worked_hours }
    assert_redirected_to bus_entry_path(assigns(:bus_entry))
  end

  test "should destroy bus_entry" do
    assert_difference('BusEntry.count', -1) do
      delete :destroy, id: @bus_entry
    end

    assert_redirected_to bus_entries_path
  end
end
