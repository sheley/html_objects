require 'test_helper'
require 'html_objects'

class TestLabel < Minitest::Test
  def test_label_without_escaping_issues
    assert_equal(
      '<label for="date">Date (YYYY-MM-DD)</label>',
      HtmlObjects::Label.new('date', 'Date (YYYY-MM-DD)').to_html
    )
  end

  def test_label_with_escaping_issues
    assert_equal(
      '<label for="date (&quot;Date!&quot;)">Date &lt;YYYY-MM-DD&gt;</label>',
      HtmlObjects::Label.new(
        'date ("Date!")',
        'Date <YYYY-MM-DD>'
      ).to_html
    )
  end
end
