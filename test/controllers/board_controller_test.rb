require 'test_helper'

class BoardControllerTest < ActionController::TestCase
  test "should get setA" do
    get :setA
    assert_response :success
  end

end
