require 'test_helper'

class BusEntryVouchersControllerTest < ActionController::TestCase
  setup do
    @bus_entry_voucher = bus_entry_vouchers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bus_entry_vouchers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bus_entry_voucher" do
    assert_difference('BusEntryVoucher.count') do
      post :create, bus_entry_voucher: { amount: @bus_entry_voucher.amount, bus_entry_id: @bus_entry_voucher.bus_entry_id, voucher_id: @bus_entry_voucher.voucher_id }
    end

    assert_redirected_to bus_entry_voucher_path(assigns(:bus_entry_voucher))
  end

  test "should show bus_entry_voucher" do
    get :show, id: @bus_entry_voucher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bus_entry_voucher
    assert_response :success
  end

  test "should update bus_entry_voucher" do
    put :update, id: @bus_entry_voucher, bus_entry_voucher: { amount: @bus_entry_voucher.amount, bus_entry_id: @bus_entry_voucher.bus_entry_id, voucher_id: @bus_entry_voucher.voucher_id }
    assert_redirected_to bus_entry_voucher_path(assigns(:bus_entry_voucher))
  end

  test "should destroy bus_entry_voucher" do
    assert_difference('BusEntryVoucher.count', -1) do
      delete :destroy, id: @bus_entry_voucher
    end

    assert_redirected_to bus_entry_vouchers_path
  end
end
