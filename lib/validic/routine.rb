module Validic
  class Routine
    include Validic::Utils
    def initialize(attrs = {})
      attributes_builder(attrs, self)
    end
  end
end
