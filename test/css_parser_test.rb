require 'rubygems'
require 'test/unit'
require 'treetop'

Treetop.load(File.expand_path("#{File.dirname(__FILE__)}/../css"))

class CssParserTest < Test::Unit::TestCase

  def setup    
    @parser = CssParser.new
    @text1 = read_file('test1.css')
    @text2 = read_file('test2.css')
    @text3 = read_file('test3.css')
    @text4 = read_file('test4.css')
  end
  
  def test_to_s
    # puts assert_parse(@text4)
  end

  def assert_parse(input)
    result = @parser.parse(input)
    puts @parser.terminal_failures.join("\n") unless result
    assert !result.nil?
    result
  end
    
  def read_file(file)
    text = ''
    File.open(File.join(File.dirname(__FILE__), file), 'r') { |f| text = f.read }    
    text
  end
   
end