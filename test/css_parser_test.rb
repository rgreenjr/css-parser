require 'rubygems'
require 'test/unit'
require 'treetop'
Treetop.load 'css'

class CssParserTest < Test::Unit::TestCase

  def test_parsing
    assert_not_nil CssParser.new.parse(IO.read('test/test1.css'))
    assert_not_nil CssParser.new.parse(IO.read('test/test2.css'))
    assert_not_nil CssParser.new.parse(IO.read('test/test3.css'))
    assert_not_nil CssParser.new.parse(IO.read('test/test4.css'))
  end

end