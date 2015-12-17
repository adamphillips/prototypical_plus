module Prototypical; module Components
  class Box
    def initialize(options={})
      @label = options.fetch(:label) { '' }
      @css_class = options.fetch(:css_class) { '' }
      @style = Style.new(options.fetch(:style) { {} })
    end

    def render_settings
      {
        layout: template_path,
        locals: {
          label: label,
          css_class: css_class,
          style: style
        }
      }
    end

  private
    attr_reader :label, :css_class, :style

    def template_path
      "prototypical/components/box"
    end

    class Style
      DEFAULTS = {
        padding: '12px',
        'background-color' => '#cccccc'
      }

      def initialize(options={})
        @options = DEFAULTS.merge(options)
      end

      def [](key)
        options[key]
      end

      def to_s
        options
          .map{|k, v| "#{k}: #{v}"}
          .join(';')
      end

    private
      attr_reader :options
    end
  end
end; end