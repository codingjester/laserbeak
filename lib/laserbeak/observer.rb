module Laserbeak
  class Observer
    @@subclasses = {}
    def self.create(type, config={})
      c = @@subclasses[type]
      if c
        c.new(config)
      else
        raise "Bad observer: #{type}"
      end
    end

    def self.register_observer(name)
      @@subclasses[name] = self
    end
  end
end
