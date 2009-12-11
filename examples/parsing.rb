require 'rubygems'
require 'treetop'
Treetop.load 'css'

file = 'test/test1.css'
parser = CssParser.new
result = parser.parse(IO.read(file))
raise "Failed to parse CSS file: " + parser.failure_reason unless result
puts result
