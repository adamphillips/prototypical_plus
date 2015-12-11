module Prototypical
  module ComponentsHelper
    def proto type, options={}
      render component(type, options).render_settings
    end

  private
    def component type, options
      "Prototypical::Components::#{type.capitalize}".constantize.new(options)
    end
  end
end