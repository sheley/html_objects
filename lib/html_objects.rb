require 'cgi'

module HtmlObjects
  module Escape
    def self.html(text)
      CGI::escapeHTML(text)
    end

    def self.map_html(texts)
      texts.map do |text|
        html(text)
      end
    end
  end
end

require "html_objects/version"
require "html_objects/label"
