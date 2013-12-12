# TextField.new('date', 'Date (YYYY-MM-DD)') =>
# 							<label for="date">Date (YYYY-MM-DD)</label>
#  							<input type="text" name="date" />
module HtmlObjects
  class TextField

  	def initialize(name, title)
  		@name = name
      @title = title
  	end

  	def to_html
      [Label.new(@name, @title).to_html, Input.new("text", @name)]
      	.join("\n")
    end
  end
end

# TextField.new('date', 'Date (YYYY-MM-DD)') =>
# '<label for="date">Date (YYYY-MM-DD)</label>' '<input type="text" name="date"/>'
