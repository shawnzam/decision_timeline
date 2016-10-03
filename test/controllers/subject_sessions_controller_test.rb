require 'test_helper'

class SubjectSessionsControllerTest < ActionController::TestCase
  setup do
    @subject_session = subject_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subject_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subject_session" do
    assert_difference('SubjectSession.count') do
      post :create, subject_session: { timeline_id: @subject_session.timeline_id, title: @subject_session.title }
    end

    assert_redirected_to subject_session_path(assigns(:subject_session))
  end

  test "should show subject_session" do
    get :show, id: @subject_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subject_session
    assert_response :success
  end

  test "should update subject_session" do
    patch :update, id: @subject_session, subject_session: { timeline_id: @subject_session.timeline_id, title: @subject_session.title }
    assert_redirected_to subject_session_path(assigns(:subject_session))
  end

  test "should destroy subject_session" do
    assert_difference('SubjectSession.count', -1) do
      delete :destroy, id: @subject_session
    end

    assert_redirected_to subject_sessions_path
  end
end
