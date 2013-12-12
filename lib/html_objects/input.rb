module HtmlObjects
  class Input

    def initialize(type, name)
      @type = type
      @name = name
    end

    def to_html
    	'<input type="%s" name="%s"/>' % Escape.map_html([ @type, @name ])
    end

  end
end
