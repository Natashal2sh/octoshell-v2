[![Build Status](https://secure.travis-ci.org/redstonelabs/maymay.png)](http://travis-ci.org/redstonelabs/maymay)

# MayMay is a dead simple auth solution for Rails without any magic

## Installation

```ruby
gem 'maymay'
# gem 'maymay', github: 'redstonelabs/maymay'
```

## Usage

```ruby
ability = MayMay::Ability.new(user)

ability.may :create, :posts
ability.may? :create, :posts # => true

ability.may :show, :posts do |user, post|
  user.id == post.user_id
end
ability.may? :show, :posts, post # => true
```

That's it!

## How it works with Rails

```ruby
class ApplicationController < ActionController::Base
  def ability
    ability = MayMay::Ability.new(current_user)
    # define abilities (inline, from db, how you wanna)
    ability
  end
end

class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    authorize! :show, :posts, @post
  end
end
```

If you are not authorized you'll get an `MayMay::Unauthorized` exception.

If you make a typo you'll get an `MayMay::UndefinedAbility` exception.

Yep. It's a simplified [cancan](https://github.com/ryanb/cancan) gem.
