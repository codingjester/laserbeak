require 'laserbeak/observer'
require 'laserbeak/logfile'

module Laserbeak
  class Simple < Observer

    def initialize(config)
      @file ||= Laserbeak::LogFile.new(config[:file])
    end 
    
    def observe
      @file.backward(10).tail do |line|
        puts line
      end
    end

    register_observer :simple

  end
end
