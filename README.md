## Allows to specify 100% exclusive message for any `ActiveModel` validation error.

[![Gem Version](https://badge.fury.io/rb/exclusive-error-message.svg)](https://badge.fury.io/rb/exclusive-error-message)

## Usage
**Summary**

Prefix any error message with `_` and it will become full message omitting `I18n(:'errors.format', ...)` processing.

**Before**
```ruby
class Post < ActiveRecord::Base
  validates :title, presence: { message: "Sorry, but title can't be empty" }
end

post = Post.new
post.validate

# Get full messages for errors:
post.errors.to_hash(true) # => { title: "Title: Sorry, but title can't be empty" }
```

**After**
```ruby
class Post < ActiveRecord::Base
  validates :title, presence: { message: "_Sorry, but title can't be empty" }
end

post = Post.new
post.validate

# Get full messages for errors:
post.errors.to_hash(true) # => { title: "Sorry, but title can't be empty" }
```

**Usage in localizations**
```yaml
en:
  activerecord:
    errors:
      models:
        post:
          attributes:
            title:
              blank: _Sorry, but title can't be empty
```

**Adding error manually**
```ruby
post   = Post.new
errors = post.errors

errors.add(:title, "_Sorry, but title can't be empty")

# Get full messages for errors:
post.errors.to_hash(true) # => { title: "Sorry, but title can't be empty" }
```

## Installation
Add to your Gemfile:
```ruby
gem 'exclusive-error-message', '~> 1.0'
```
