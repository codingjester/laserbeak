require 'laserbeak/logfile'

module Laserbeak
  class Testing < Observer
    def initialize(config)
      @file ||= Laserbeak::LogFile.new(config[:file])
    end

    def observe
      @file.backward(10).tail do |line|
        puts "#{Time.new} #{line}"
      end
    end

    register_observer :testing
  end
end
