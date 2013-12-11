require 'test_helper'
require 'html_objects'

class TestLabel < Minitest::Test
  def test_label
    assert_equal(
      '<label for="date">Date (YYYY-MM-DD)</label>',
      HtmlObjects::Label.new('date', 'Date (YYYY-MM-DD)').to_html
    )
  end
end
