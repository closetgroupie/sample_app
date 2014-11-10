require 'test_helper'

class BoothTest < ActiveSupport::TestCase
  
def setup
    @user = users(:michael)
    @booth = @user.build_booth(name: "Test Booth")
  end

  test "booth should be valid" do
   assert @booth.valid?
  end

  test "user id should be present" do
    @booth.user_id = nil
   assert_not @booth.valid?
  end

  test "booth name should be unique" do
    duplicate_booth = @booth.dup
    @booth.save
    assert_not duplicate_booth.valid?
  end


end 


