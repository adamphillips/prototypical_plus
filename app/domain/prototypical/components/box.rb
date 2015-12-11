module Prototypical; module Components
  class Box
    def initialize(options={})
      @css_class = options.fetch(:css_class) { '' }
      @style = options.fetch(:style) { '' }
    end

    def render_settings
      {
        partial: template_path,
        locals: {
          css_class: css_class,
          style: style
        }
      }
    end

  private
    attr_reader :css_class, :style

    def template_path
      "prototypical/components/box"
    end
  end
end; end