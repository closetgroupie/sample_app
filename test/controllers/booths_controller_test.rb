require 'test_helper'

class BoothsControllerTest < ActionController::TestCase

	def setup
    @user = users(:michael)
    @other_user = users(:archer)
  end
  
  test "should get new" do
  	log_in_as(@other_user)
    get :new
    assert_response :success
  end

end
