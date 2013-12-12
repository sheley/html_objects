require 'test_helper'
require 'html_objects'

class TestTextField < Minitest::Test
  def test_text_field_without_escaping_issues
    assert_equal(
      strip_whitespace('<label for="date">Date (YYYY-MM-DD)</label><input type="text" name="date" />'),
      strip_whitespace(HtmlObjects::TextField.new('date', 'Date (YYYY-MM-DD)').to_html)
    )
  end
end

#   def test_text_field_with_escaping_issues
#     assert_equal(
#       '<label for="date (&quot;Date!&quot;)">Date &lt;YYYY-MM-DD&gt;</label>',
#       HtmlObjects::TextField.new(
#         'date ("Date!")',
#         'Date <YYYY-MM-DD>'
#       ).to_html
#     )
#   end
# end


# TextField.new('date', 'Date (YYYY-MM-DD)') =>
