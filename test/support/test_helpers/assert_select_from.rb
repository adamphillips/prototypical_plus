module TestHelpers
  module AssertSelectFrom
    def assert_select_from(markup, *args)
      assert_select markup_as_node(markup), *args
    end

  private
    def markup_as_node(markup)
      Nokogiri::HTML::DocumentFragment.parse(markup)
    end
  end
end