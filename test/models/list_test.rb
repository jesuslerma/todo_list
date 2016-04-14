require 'test_helper'

class ListTest < ActiveSupport::TestCase
  test 'list without title must be invalid' do
    list = List.new title: nil
    assert_not list.valid?
  end
end
