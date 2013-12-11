module HtmlObjects
  class Title
    def initialize(text)
      @text = text
    end

    def to_html
      "<title>%s</title>" % Escape.html(@text)
    end
  end
end
