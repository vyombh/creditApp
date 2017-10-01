require 'test_helper'

class CreditdetailsControllerTest < ActionController::TestCase
  setup do
    @creditdetail = creditdetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:creditdetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create creditdetail" do
    assert_difference('Creditdetail.count') do
      post :create, creditdetail: { amount: @creditdetail.amount, isPaid: @creditdetail.isPaid, repaidAmount: @creditdetail.repaidAmount, requestStatus: @creditdetail.requestStatus }
    end

    assert_redirected_to creditdetail_path(assigns(:creditdetail))
  end

  test "should show creditdetail" do
    get :show, id: @creditdetail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @creditdetail
    assert_response :success
  end

  test "should update creditdetail" do
    patch :update, id: @creditdetail, creditdetail: { amount: @creditdetail.amount, isPaid: @creditdetail.isPaid, repaidAmount: @creditdetail.repaidAmount, requestStatus: @creditdetail.requestStatus }
    assert_redirected_to creditdetail_path(assigns(:creditdetail))
  end

  test "should destroy creditdetail" do
    assert_difference('Creditdetail.count', -1) do
      delete :destroy, id: @creditdetail
    end

    assert_redirected_to creditdetails_path
  end
end
