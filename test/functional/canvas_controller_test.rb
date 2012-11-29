require 'test_helper'

class CanvasControllerTest < ActionController::TestCase
  setup do
    @canva = canvas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:canvas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create canva" do
    assert_difference('Canva.count') do
      post :create, canva: { border: @canva.border, fancy_edges: @canva.fancy_edges, orientation: @canva.orientation, rolled_canvas: @canva.rolled_canvas, size: @canva.size }
    end

    assert_redirected_to canva_path(assigns(:canva))
  end

  test "should show canva" do
    get :show, id: @canva
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @canva
    assert_response :success
  end

  test "should update canva" do
    put :update, id: @canva, canva: { border: @canva.border, fancy_edges: @canva.fancy_edges, orientation: @canva.orientation, rolled_canvas: @canva.rolled_canvas, size: @canva.size }
    assert_redirected_to canva_path(assigns(:canva))
  end

  test "should destroy canva" do
    assert_difference('Canva.count', -1) do
      delete :destroy, id: @canva
    end

    assert_redirected_to canvas_path
  end
end
