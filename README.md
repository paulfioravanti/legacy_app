# Legacy App

[![Build Status](https://secure.travis-ci.org/paulfioravanti/legacy_app.png)](http://travis-ci.org/paulfioravanti/legacy_app) [![Dependency Status](https://gemnasium.com/paulfioravanti/legacy_app.png)](https://gemnasium.com/paulfioravanti/legacy_app) [![Code Climate](https://codeclimate.com/github/paulfioravanti/legacy_app.png)](https://codeclimate.com/github/paulfioravanti/legacy_app) [![Security Status](http://rails-brakeman.com/paulfioravanti/legacy_app.png)](http://rails-brakeman.com/paulfioravanti/legacy_app)

## Description

This is my attempt at upgrading the [Legacy App](https://github.com/tricycle/legacy_app) by [Trike Apps](http://trikeapps.com/), from Rails 2.3 to 3.2.12, still have all tests pass, and maybe shine it up a bit.  Installation and testing instructions for the original Rails 2.3 app can be found [here](https://github.com/tricycle/legacy_app/blob/master/README.md).

## Environment Prerequisites

- [ImageMagick](http://www.imagemagick.org/script/index.php)
- MySQL (or access to a MySQL server)
- Ruby 1.9.3

## Installation

Clone this repo, install gem dependencies with Bundle, and prepare the databases:

    $ git clone https://github.com/paulfioravanti/legacy_app.git
    $ bundle install
    $ bundle exec rake db:create
    $ bundle exec rake db:migrate
    $ bundle exec rake db:test:prepare

## Usage

Start local Rails server and navigate to `http://localhost:3000`:

    $ rails s

## Testing

Code quality is attempted by using [Code Climate](https://codeclimate.com/) for quality metrics, and [Rails Brakeman](http://rails-brakeman.com/) for a security audit.  [Reek](https://github.com/troessner/reek) and [Rails Best Practices](https://github.com/railsbp/rails_best_practices) also helped in identifying some quality issues.

Run tests:

    $ rake spec cucumber

## Issues

- Tests related to an attachment's size fail the first time, and pass subsequent times.  I haven't been able to find a solution to this issue, and so have taken out `validates_as_attachment` from **app/models/image.rb** and replaced them with the non-`size`-related validations it references.  Given that attachment_fu is not actively maintained, if this app was to move forward, I would suggest switching over to [Paperclip](https://github.com/thoughtbot/paperclip) or [Carrierwave](https://github.com/jnicklas/carrierwave).
- Attempting to use any code coverage tools like [SimpleCov](https://github.com/colszowka/simplecov) or [Coveralls](https://coveralls.io/) seems to break tests for some reason, so I'll refrain from using coverage metrics
- Not 100% sure whether I properly migrated over from Jammit to the Asset Pipeline correctly due to there being a lot of stylesheets that don't seem to be used, or I haven't been able to reference them properly.

## Social

<a href="http://stackoverflow.com/users/567863/paul-fioravanti">
  <img src="http://stackoverflow.com/users/flair/567863.png" width="208" height="58" alt="profile for Paul Fioravanti at Stack Overflow, Q&amp;A for professional and enthusiast programmers" title="profile for Paul Fioravanti at Stack Overflow, Q&amp;A for professional and enthusiast programmers">
</a>

[![endorse](http://api.coderwall.com/pfioravanti/endorse.png)](http://coderwall.com/pfioravanti)