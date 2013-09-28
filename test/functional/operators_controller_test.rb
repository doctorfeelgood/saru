require 'test_helper'

class OperatorsControllerTest < ActionController::TestCase
  setup do
    @operator = operators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operator" do
    assert_difference('Operator.count') do
      post :create, operator: { address: @operator.address, cellphone_number: @operator.cellphone_number, email: @operator.email, employee_number: @operator.employee_number, first_name: @operator.first_name, last_name: @operator.last_name, phone_number: @operator.phone_number }
    end

    assert_redirected_to operator_path(assigns(:operator))
  end

  test "should show operator" do
    get :show, id: @operator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @operator
    assert_response :success
  end

  test "should update operator" do
    put :update, id: @operator, operator: { address: @operator.address, cellphone_number: @operator.cellphone_number, email: @operator.email, employee_number: @operator.employee_number, first_name: @operator.first_name, last_name: @operator.last_name, phone_number: @operator.phone_number }
    assert_redirected_to operator_path(assigns(:operator))
  end

  test "should destroy operator" do
    assert_difference('Operator.count', -1) do
      delete :destroy, id: @operator
    end

    assert_redirected_to operators_path
  end
end
