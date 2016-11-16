require 'test_helper'

class BorrowedsControllerTest < ActionController::TestCase
  setup do
    @borrowed = borroweds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:borroweds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create borrowed" do
    assert_difference('Borrowed.count') do
      post :create, borrowed: { Book_id: @borrowed.Book_id, Member_id: @borrowed.Member_id, date_due: @borrowed.date_due, return_date: @borrowed.return_date }
    end

    assert_redirected_to borrowed_path(assigns(:borrowed))
  end

  test "should show borrowed" do
    get :show, id: @borrowed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @borrowed
    assert_response :success
  end

  test "should update borrowed" do
    patch :update, id: @borrowed, borrowed: { Book_id: @borrowed.Book_id, Member_id: @borrowed.Member_id, date_due: @borrowed.date_due, return_date: @borrowed.return_date }
    assert_redirected_to borrowed_path(assigns(:borrowed))
  end

  test "should destroy borrowed" do
    assert_difference('Borrowed.count', -1) do
      delete :destroy, id: @borrowed
    end

    assert_redirected_to borroweds_path
  end
end
