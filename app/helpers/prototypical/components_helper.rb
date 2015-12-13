module Prototypical
  module ComponentsHelper
    def proto type, options={}, &block
      settings = component(type, options).render_settings
      render(settings, &block)
    end

  private
    def component type, options
      "Prototypical::Components::#{type.capitalize}".constantize.new(options)
    end
  end
end