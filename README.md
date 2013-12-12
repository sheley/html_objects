# HtmlObjects

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'html_objects'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install html_objects

## Usage

```ruby
Document.new.to_html # => <html></html>

def page(title)
  Document.new(
    Head.new(
      [ Title.new(title)
      ]),
    Body.new([
      H1.new(title),
      Form.new('/users',
        [ TextField.new('date', 'Date (YYYY-MM-DD)', :class => 'input')
        , SubmitButton.new('Create')
        ])
    ])
  )
end

page('Welcome to my home page!').to_html

# =>

'<html>
<head>
<title>Welcome to my home page!</title>
</head>
<body>
<h1>Welcome to my home page!</h1>
<form method="post" action="/users">
<label for="date">Date (YYYY-MM-DD)</label>
<input type="text" class="input" name="date" />
<input type="submit" value="Create" />
</form>
</body>
</html>'
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
