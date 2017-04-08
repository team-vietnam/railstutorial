# Ruby on Rails Tutorial sample application

This is the sample application for
[*Ruby on Rails Tutorial:
Learn Web Development with Rails*](http://www.railstutorial.org/)
by [Michael Hartl](http://www.michaelhartl.com/).

## Environments

- Heroku: https://thawing-plains-90416.herokuapp.com/ | https://git.heroku.com/thawing-plains-90416.git
- GitLab: https://gitlab.com/vochicong/railstutorial-sample_app
- c9: https://rails-tutorial-congvc.c9users.io

## License

All source code in the [Ruby on Rails Tutorial](http://railstutorial.org/)
is available jointly under the MIT License and the Beerware License. See
[LICENSE.md](LICENSE.md) for details.

## Mac dev env

Install Homebrew.

Install Ruby/rbenv.

## c9.io (rvm) dev env

```
rvm install ruby-2.3.3
rvm use 2.3.3
gem install bundler
```

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ bundle exec rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ bundle exec rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ bundle exec rails server
```
## Automated tests with Guard

```
$ bundle exec guard
```

For more information, see the
[*Ruby on Rails Tutorial* book](http://www.railstutorial.org/book).