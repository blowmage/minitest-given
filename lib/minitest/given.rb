require "minitest/unit"
require "minitest/spec"
# require "wrong/adapters/minitest"

module MiniTest
  module Given
    VERSION = "0.1.pre"
  end

  class Spec
    def self.Given *args, &block
      if args.first.is_a? Symbol
        self.let args.first, &block
      else
        self.before(&block)
      end
    end

    def self.Then &block
      # I want to call wrong's assert passing the block!
      # I don't want to call the standard assert here.
      file, line = eval("[__FILE__, __LINE__]", block.binding)
      it { instance_eval("assert(false)", file, line) unless instance_eval(&block) }
    end

    class << self
      alias :context :describe
      alias :Context :describe
      alias :When    :Given
      alias :And     :Then
    end
  end
end
