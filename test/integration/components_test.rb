require 'test_helper'

class ComponentsTest < ActionDispatch::IntegrationTest
  it 'should be possible to view an image' do
    get '/'
    assert_response :success
  end
end

