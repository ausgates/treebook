require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "a user should enter their first name" do 
  	user = User.new
  	assert !user.save
  	assert !user.errors[:first_name].empty?
  end
  test "a user should enter their last name" do 
  	user = User.new
  	assert !user.save
  	assert !user.errors[:last_name].empty?
  end
end
