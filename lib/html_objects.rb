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
require "html_objects/container"
require "html_objects/document"
require "html_objects/head"
require "html_objects/body"
require "html_objects/h1"
require "html_objects/title"
