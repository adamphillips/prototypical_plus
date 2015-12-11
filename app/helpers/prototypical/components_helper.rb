module Prototypical
  module ComponentsHelper
    def proto type, locals
      render partial: "prototypical/components/#{type}", locals: locals
    end
  end
end