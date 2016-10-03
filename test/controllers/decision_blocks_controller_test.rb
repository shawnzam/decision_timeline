require 'test_helper'

class DecisionBlocksControllerTest < ActionController::TestCase
  setup do
    @decision_block = decision_blocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:decision_blocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create decision_block" do
    assert_difference('DecisionBlock.count') do
      post :create, decision_block: { decision_text: @decision_block.decision_text, ordering: @decision_block.ordering, timeline_id: @decision_block.timeline_id, type: @decision_block.type, value: @decision_block.value }
    end

    assert_redirected_to decision_block_path(assigns(:decision_block))
  end

  test "should show decision_block" do
    get :show, id: @decision_block
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @decision_block
    assert_response :success
  end

  test "should update decision_block" do
    patch :update, id: @decision_block, decision_block: { decision_text: @decision_block.decision_text, ordering: @decision_block.ordering, timeline_id: @decision_block.timeline_id, type: @decision_block.type, value: @decision_block.value }
    assert_redirected_to decision_block_path(assigns(:decision_block))
  end

  test "should destroy decision_block" do
    assert_difference('DecisionBlock.count', -1) do
      delete :destroy, id: @decision_block
    end

    assert_redirected_to decision_blocks_path
  end
end
