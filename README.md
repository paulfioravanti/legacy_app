# Legacy App

[![Build Status](https://secure.travis-ci.org/paulfioravanti/legacy_app.png)](http://travis-ci.org/paulfioravanti/legacy_app) [![Code Climate](https://codeclimate.com/github/paulfioravanti/legacy_app.png)](https://codeclimate.com/github/paulfioravanti/legacy_app) [![Coverage Status](https://coveralls.io/repos/paulfioravanti/legacy_app/badge.png?branch=master)](https://coveralls.io/r/paulfioravanti/legacy_app)
 [![Security Status](http://rails-brakeman.com/paulfioravanti/legacy_app.png)](http://rails-brakeman.com/paulfioravanti/legacy_app)

## Description

This is my attempt at upgrading the [Legacy App](https://github.com/tricycle/legacy_app) by [Trike Apps](http://trikeapps.com/), from Rails 2.3 to 3.2.13, still have all tests pass, and maybe shine it up a bit.  Installation and testing instructions for the original Rails 2.3 app can be found [here](https://github.com/tricycle/legacy_app/blob/master/README.md).

## Environment Prerequisites

- [ImageMagick](http://www.imagemagick.org/script/index.php)
- MySQL (or access to a MySQL server)
- Ruby 1.9.3

## Installation

Clone this repo, install gem dependencies with Bundle:

    $ git clone https://github.com/paulfioravanti/legacy_app.git
    $ bundle install

### Environment Configuration

    $ cp config/application.example.yml config/application.yml

**Inside Rails App**

Generate a secret token:

    $ rake secret

Copy the resulting string into the `SECRET_TOKEN` entry in **config/application.yml**, along with your database information:

    # App keys
    SECRET_TOKEN: # your rake secret generated token

    development:
      DB_NAME: # your dev db name here
      DB_USER: # your dev db username here
      DB_PASSWORD: # your dev db password here

    test:
      DB_NAME: # your test db name here
      DB_USER: # your test db username here
      DB_PASSWORD: # your test db password here

    production:
      DB_NAME: # your prod db name here
      DB_USER: # your prod db username here
      DB_PASSWORD: # your prod db password here

**Testing with Travis CI** (optional)

If you're using Travis for continuous integration testing, do the following (without the `{{ }}`):

Create encrypted travis variables for your database values:

    $ gem install travis
    $ travis encrypt DB_NAME={{YOUR_DB_NAME_UNDER_TEST}} # eg: sample_app_test
    $ travis encrypt DB_USER={{YOUR_DB_USER}}
    $ travis encrypt DB_PASSWORD={{YOUR_DB_PASSWORD}}

Then add them to **.travis.yml**

    env:
      global:
        - secure: {{YOUR_ENCRYPTED_DB_NAME_UNDER_TEST}}
        - secure: {{YOUR_ENCRYPTED_DB_USER}}
        - secure: {{YOUR_ENCRYPTED_DB_PASSWORD}}

And after all that's done, set up the databases:

    $ bundle exec rake db:create
    $ bundle exec rake db:migrate
    $ bundle exec rake db:test:prepare

## Usage

Start local Rails server and navigate to `http://localhost:3000`:

    $ rails s

## Testing

Code quality is attempted by using [Code Climate](https://codeclimate.com/) for quality metrics, [SimpleCov](https://github.com/colszowka/simplecov)/[Coveralls](https://coveralls.io/) for test coverage, [Rails Brakeman](http://rails-brakeman.com/) for security auditing, and [Reek](https://github.com/troessner/reek) and [Rails Best Practices](https://github.com/railsbp/rails_best_practices) also helped in identifying some quality issues.

Run tests:

    $ rspec spec
    $ rake spec cucumber

## Extras

- Wrestled with app to gain precious badges
- HAMLized the views
- Refactoring of parts of the app
- Extra specs to boost code coverage

## Issues

- Tests related to an attachment's size fail the first time, and pass subsequent times.  I haven't been able to find a solution to this issue, and so have taken out `validates_as_attachment` from **app/models/image.rb** and replaced them with the non-`size`-related validations it references.  Given that attachment_fu is not actively maintained, if this app was to move forward, I would suggest switching over to [Paperclip](https://github.com/thoughtbot/paperclip) or [Carrierwave](https://github.com/jnicklas/carrierwave).
- Travis CI build is quite fragile, and sometimes fails randomly when calling `Image.make!`.
- Not 100% sure whether I properly migrated over from Jammit to the Asset Pipeline correctly due to there being a lot of stylesheets that don't seem to be used, or I haven't been able to reference them properly.

## Social

<a href="http://stackoverflow.com/users/567863/paul-fioravanti">
  <img src="http://stackoverflow.com/users/flair/567863.png" width="208" height="58" alt="profile for Paul Fioravanti at Stack Overflow, Q&amp;A for professional and enthusiast programmers" title="profile for Paul Fioravanti at Stack Overflow, Q&amp;A for professional and enthusiast programmers">
</a>

[![endorse](http://api.coderwall.com/pfioravanti/endorsecount.png)](http://coderwall.com/pfioravanti)

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/paulfioravanti/legacy_app/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

