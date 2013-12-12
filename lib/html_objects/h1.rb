module HtmlObjects
  class H1
    def initialize(text)
      @text = text
    end

    def to_html
      "<h1>%s</h1>" % Escape.html(@text)
    end
  end
end
