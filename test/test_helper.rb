gem 'minitest'
require 'minitest/autorun'

require 'html_objects'
include HtmlObjects

def strip_whitespace(text)
  text.gsub(/\s*/, '')
end
