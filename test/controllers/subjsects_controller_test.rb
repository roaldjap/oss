require 'test_helper'

class SubjsectsControllerTest < ActionController::TestCase
  setup do
    @subjsect = subjsects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subjsects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subjsect" do
    assert_difference('Subjsect.count') do
      post :create, subjsect: { room_id: @subjsect.room_id, schedule_id: @subjsect.schedule_id, section_id: @subjsect.section_id, subject_id: @subjsect.subject_id }
    end

    assert_redirected_to subjsect_path(assigns(:subjsect))
  end

  test "should show subjsect" do
    get :show, id: @subjsect
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subjsect
    assert_response :success
  end

  test "should update subjsect" do
    patch :update, id: @subjsect, subjsect: { room_id: @subjsect.room_id, schedule_id: @subjsect.schedule_id, section_id: @subjsect.section_id, subject_id: @subjsect.subject_id }
    assert_redirected_to subjsect_path(assigns(:subjsect))
  end

  test "should destroy subjsect" do
    assert_difference('Subjsect.count', -1) do
      delete :destroy, id: @subjsect
    end

    assert_redirected_to subjsects_path
  end
end
