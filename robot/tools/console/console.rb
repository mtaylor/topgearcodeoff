# Usage:
# gem install serialport
# ruby console.rb
#

require 'rubygems'
require 'serialport'

DEVICE_NAME='/dev/ttyACM0'

sp = SerialPort.new(DEVICE_NAME)
sp.baud=921600

while true
  puts sp.readline
end
