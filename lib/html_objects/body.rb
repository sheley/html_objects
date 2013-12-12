module HtmlObjects
  class Body
    def initialize(elements=[])
      @container = Container.new('body', elements)
    end

    def to_html
      @container.to_html
    end
  end
end
