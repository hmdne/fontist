require "fontist/utils"
require "fontist/font_formula"
Dir["./lib/fontist/formulas/**.rb"].sort.each { |file| require file }

module Fontist
  module Formulas
    def self.register_formulas
      Formulas.constants.select do |constant|
        if Formulas.const_get(constant).is_a?(Class)
          klass = "Fontist::Formulas::#{constant}"
          Fontist::Registry.register(Object.const_get(klass))
        end
      end
    end
  end
end
