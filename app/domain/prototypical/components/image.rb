module Prototypical; module Components
  class Image
    DEFAULT_WIDTH = 10
    DEFAULT_HEIGHT = 10

    def initialize(options={})
      @width = options.fetch(:width) { DEFAULT_WIDTH }
      @height = options.fetch(:height) { DEFAULT_HEIGHT }
    end

    def render_settings
      {
        partial: template_path,
        locals: {
          width: width,
          height: height
        }
      }
    end

  private
    attr_reader :width, :height

    def template_path
      "prototypical/components/image"
    end
  end
end; end