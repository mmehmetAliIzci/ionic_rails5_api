require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  setup do
    @question = questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create question" do
    assert_difference('Question.count') do
      post :create, params: { question: { name: @question.name, phone: @question.phone } }
    end

    assert_response 201
  end

  test "should show question" do
    get :show, params: { id: @question }
    assert_response :success
  end

  test "should update question" do
    patch :update, params: { id: @question, question: { name: @question.name, phone: @question.phone } }
    assert_response 200
  end

  test "should destroy question" do
    assert_difference('Question.count', -1) do
      delete :destroy, params: { id: @question }
    end

    assert_response 204
  end
end
