require 'test_helper'

class PeriodsControllerTest < ActionController::TestCase
  setup do
    @period = periods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:periods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create period" do
    assert_difference('Period.count') do
      post :create, period: { beginning_date: @period.beginning_date, diesel_total: @period.diesel_total, duration: @period.duration, end_date: @period.end_date, file_name: @period.file_name, ledger_account: @period.ledger_account, period_number: @period.period_number, status: @period.status, total: @period.total }
    end

    assert_redirected_to period_path(assigns(:period))
  end

  test "should show period" do
    get :show, id: @period
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @period
    assert_response :success
  end

  test "should update period" do
    put :update, id: @period, period: { beginning_date: @period.beginning_date, diesel_total: @period.diesel_total, duration: @period.duration, end_date: @period.end_date, file_name: @period.file_name, ledger_account: @period.ledger_account, period_number: @period.period_number, status: @period.status, total: @period.total }
    assert_redirected_to period_path(assigns(:period))
  end

  test "should destroy period" do
    assert_difference('Period.count', -1) do
      delete :destroy, id: @period
    end

    assert_redirected_to periods_path
  end
end
