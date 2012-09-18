require 'test_helper'

class TipsControllerTest < ActionController::TestCase
  setup do
    @tip = tips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tip" do
    assert_difference('Tip.count') do
      post :create, tip: { address: @tip.address, body: @tip.body, date: @tip.date, id: @tip.id, indent: @tip.indent, tag: @tip.tag }
    end

    assert_redirected_to tip_path(assigns(:tip))
  end

  test "should show tip" do
    get :show, id: @tip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tip
    assert_response :success
  end

  test "should update tip" do
    put :update, id: @tip, tip: { address: @tip.address, body: @tip.body, date: @tip.date, id: @tip.id, indent: @tip.indent, tag: @tip.tag }
    assert_redirected_to tip_path(assigns(:tip))
  end

  test "should destroy tip" do
    assert_difference('Tip.count', -1) do
      delete :destroy, id: @tip
    end

    assert_redirected_to tips_path
  end
end
