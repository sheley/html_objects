module HtmlObjects
  class Label
    def initialize(name, title)
      @name = name
      @title = title
    end

    def to_html
      '<label for="%s">%s</label>' % Escape.map_html([ @name, @title ])
    end
  end
end
