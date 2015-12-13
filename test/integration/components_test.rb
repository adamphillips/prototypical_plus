require 'test_helper'

class ComponentsTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  it 'should be possible to view a prototype' do
    visit '/'
    assert page.has_selector?('.box img')
  end
end

