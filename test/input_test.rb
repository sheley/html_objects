require 'test_helper'
require 'html_objects'

class TestInput < Minitest::Test
  def test_input_without_escaping_issues
    assert_equal(
      '<input type="text" name="date"/>',
      HtmlObjects::Input.new("text", "date").to_html
    )
  end
end
