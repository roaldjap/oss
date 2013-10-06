require 'test_helper'

class ChairpeopleControllerTest < ActionController::TestCase
  setup do
    @chairperson = chairpeople(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chairpeople)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chairperson" do
    assert_difference('Chairperson.count') do
      post :create, chairperson: { department_id: @chairperson.department_id, fname: @chairperson.fname, lname: @chairperson.lname, mi: @chairperson.mi }
    end

    assert_redirected_to chairperson_path(assigns(:chairperson))
  end

  test "should show chairperson" do
    get :show, id: @chairperson
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chairperson
    assert_response :success
  end

  test "should update chairperson" do
    patch :update, id: @chairperson, chairperson: { department_id: @chairperson.department_id, fname: @chairperson.fname, lname: @chairperson.lname, mi: @chairperson.mi }
    assert_redirected_to chairperson_path(assigns(:chairperson))
  end

  test "should destroy chairperson" do
    assert_difference('Chairperson.count', -1) do
      delete :destroy, id: @chairperson
    end

    assert_redirected_to chairpeople_path
  end
end
