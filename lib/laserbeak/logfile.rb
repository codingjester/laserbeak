require 'file-tail'

module Laserbeak
  class LogFile < File
    include File::Tail 
  end
end
