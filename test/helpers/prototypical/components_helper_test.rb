require 'test_helper'

require 'support/test_helpers/assert_select_from'

module Prototypical
  class ComponentsHelperTest < ActionView::TestCase
    include TestHelpers::AssertSelectFrom

    describe '#proto' do
      it 'should render the component' do
        markup = proto(:box, css_class: 'three-col', style: {height: '50px'})
        assert_select_from markup, 'div.box.three-col'
      end
    end
  end
end