require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test 'task without name must be invalid' do 
    task = Task.new title: nil
    assert_not task.valid?
  end
end
