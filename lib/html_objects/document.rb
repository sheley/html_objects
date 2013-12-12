module HtmlObjects
  class Document
    def initialize(head, body)
      @container = Container.new('html', [ head, body ])
    end

    def to_html
      @container.to_html
    end
  end
end
