module HtmlObjects
  class Head
    def initialize(elements=[])
      @container = Container.new('head', elements)
    end

    def to_html
      @container.to_html
    end
  end
end
