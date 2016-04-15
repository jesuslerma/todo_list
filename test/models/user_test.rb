require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:one)
  end
  test 'delete lists when user is deleted' do
    @user.destroy
    assert_empty List.where(user_id: @user.id)
  end
end
