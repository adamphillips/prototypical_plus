require 'test_helper'

require 'support/test_helpers/assert_select_from'

module Prototypical
  class ComponentsHelperTest < ActionView::TestCase
    include TestHelpers::AssertSelectFrom

    describe '#proto' do
      it 'should render the component' do
        markup = proto(:box, css_class: 'three-col', style: {height: '50px'}) {}
        assert_select_from markup, 'div.box.three-col'
      end

      describe '#proto :image' do
        it 'should render an image with the correct width and height' do
          markup = proto(:image, width: 100, height: 50)
          assert_select_from markup, 'img[src="http://placehold.it/100x50"]'
        end
      end
    end
  end
end