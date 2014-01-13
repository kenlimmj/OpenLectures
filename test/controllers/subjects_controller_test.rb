require 'test_helper'

class SubjectsControllerTest < ActionController::TestCase
  setup do
    @subject = build(:subject)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subjects)
  end

  test "should create subject" do
    assert_difference('Subject.count') do
      post :create, subject: { title: @subject.title }
    end

    assert_response 201
  end
end
