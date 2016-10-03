require 'test_helper'

class SubjectDecisionsControllerTest < ActionController::TestCase
  setup do
    @subject_decision = subject_decisions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subject_decisions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subject_decision" do
    assert_difference('SubjectDecision.count') do
      post :create, subject_decision: { choice_value: @subject_decision.choice_value, decision_block_id: @subject_decision.decision_block_id, timeline_id: @subject_decision.timeline_id }
    end

    assert_redirected_to subject_decision_path(assigns(:subject_decision))
  end

  test "should show subject_decision" do
    get :show, id: @subject_decision
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subject_decision
    assert_response :success
  end

  test "should update subject_decision" do
    patch :update, id: @subject_decision, subject_decision: { choice_value: @subject_decision.choice_value, decision_block_id: @subject_decision.decision_block_id, timeline_id: @subject_decision.timeline_id }
    assert_redirected_to subject_decision_path(assigns(:subject_decision))
  end

  test "should destroy subject_decision" do
    assert_difference('SubjectDecision.count', -1) do
      delete :destroy, id: @subject_decision
    end

    assert_redirected_to subject_decisions_path
  end
end
