# Ruby on Rails Tutorial sample application

This is the sample application for
[*Ruby on Rails Tutorial:
Learn Web Development with Rails*](http://www.railstutorial.org/)
by [Michael Hartl](http://www.michaelhartl.com/).

## Links

- [Demo on Heroku](https://thawing-plains-90416.herokuapp.com)
- [vochicong/railstutorial-sample-app](https://github.com/vochicong/railstutorial-sample-app)

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

On c9.io, specify server's IP and PORT as follows.
```
bundle exec rails server -b $IP -p $PORT
```

## Automated tests with Guard

```
$ bundle exec guard
```

## Check Ruby style

```
$ rubocop-git # for only git changed files
$ rubocop # for all project files
```


For more information, see the
[*Ruby on Rails Tutorial* book](http://www.railstutorial.org/book).

## Deployment with GitLab

Deployment with GitLab is done using gem [travis-ci/dpl](https://github.com/travis-ci/dpl#heroku).
Configuration: [.gitlab-ci.yml](.gitlab-ci.yml) .

## Change Log
See [CHANGELOG.md](CHANGELOG.md)
