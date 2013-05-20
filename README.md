This is simple twiiter application with rails

# Instalation

```
> git clone git@github.com:mitakalab/rails-twitter-app.git

> cd rails-twiiter-app

> bundle install

> rake db:migrate
```

# Setup Twitter Developer

To use Twitter API, please set up `ENV['TWITTER_KEY']` and `ENV['TWITTER_SECRET']`

We recommend to use `dotenv-rails' gem (including `Gemfile`)

Please create `.env` file like this 

```
TWITTER_KEY=XXXXXXXXXX
TWITTER_SECRET=XXXXXXXXXX
```

You can get key and secret in https://dev.twitter.com/

