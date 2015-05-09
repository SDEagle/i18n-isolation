A minimal app (fresh rails 4.2.1, ruby 2.2.0) to reproduce https://github.com/rails/rails/issues/20091
The gist of it: `application.rb` specifies default locale to `:en` and there is a controller which looks like this:
```ruby
class LocalsController < ApplicationController
  def german
    I18n.locale = :de
    render :language
  end

  def english
    I18n.locale = :en
    render :language
  end

  def language
  end
end
```

If you visit `language` alone, you get the default locale `:en` as expected but if you visit first `german` and then immediately afterwords `language` you surprisingly get `:de`. It changes back after a minute or so, though.
