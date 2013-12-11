module HtmlObjects
  class Container
    def initialize(name, elements)
      @name = name
      @elements = elements
    end

    def to_html
      "<%s>\n%s\n</%s>" % [ Escape.html(@name), inner_html, Escape.html(@name) ]
    end

    def inner_html
      @elements.map(&:to_html).join("\n")
    end
  end
end
