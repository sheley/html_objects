require 'test_helper'

class TestTemplate < Minitest::Test
  def simple_template(title)
    Document.new(
      Head.new(
        [ Title.new(title)
        ]),
      Body.new(
        [ H1.new(title)
        ])
    )
  end

  def test_simple_template
    assert_equal(
      strip_whitespace('
        <html>
          <head>
            <title>The&gt;best&gt;title&gt;never</title>
          </head>
          <body>
            <h1>The&gt;best&gt;title&gt;never</h1>
          </body>
        </html>'),
      strip_whitespace(simple_template('The>best>title>never').to_html))
  end
end
