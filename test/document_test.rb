require 'test_helper'

class TestDocument < Minitest::Test
  def test_empty_document
    assert_equal(
      '<html><head></head><body></body></html>',
      strip_whitespace(Document.new(Head.new, Body.new).to_html))
  end
end
