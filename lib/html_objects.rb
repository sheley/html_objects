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
<<<<<<< HEAD
require "html_objects/textfield"
require "html_objects/input"
=======
require "html_objects/container"
require "html_objects/document"
require "html_objects/head"
require "html_objects/body"
require "html_objects/h1"
require "html_objects/title"
>>>>>>> feeffb19c829c582b8b695b4693d983912fbb127
