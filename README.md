
Base58 GMP Ruby
===============

[![Gem Version][gem-version-svg]][gem-version-link]
[![Build Status][build-status-svg]][build-status-link]
[![Codacy Badge][codacy-svg]][codacy-link]
[![Coverage Status][coverage-status-svg]][coverage-status-link]
[![Dependency Status][dependency-status-svg]][dependency-status-link]
[![Code Climate][codeclimate-status-svg]][codeclimate-status-link]
[![Scrutinizer Code Quality][scrutinizer-status-svg]][scrutinizer-status-link]
[![Downloads][downloads-svg]][downloads-link]
[![Docs][docs-rubydoc-svg]][docs-rubydoc-link]
[![License][license-svg]][license-link]

[![Stories in Ready][story-status-svg]][story-status-link]

High speed Base58 encoding using [GMP](https://gmplib.org/) with MD5 support and transcoding between Flickr, Bitcoin, Ripple and GMP alphabets.

## Installation

### Via Bundler

Add `base58_gmp` to `Gemfile` and then run `bundle`:

```sh
$ echo "gem 'base58_gmp'" >> Gemfile
$ bundle
```

### Via RubyGems

```sh
$ gem install base58_gmp
```

## Usage

Alphabet can be specified using symbol or string.

```ruby
require 'base58_gmp'

# Encode Int as Base58
Base58GMP.encode 12345                          # => 4ER

# Encode GMP::Z Int as Base58
Base58GMP.encode GMP::Z(12345)                  # => 4ER

# Encode as Base58 using alternate alphabets
Base58GMP.encode 12345, :bitcoin                # => 4fr
Base58GMP.encode 12345, :gmp                    # => 3cn

# Encode as Base58 using alternate alphabets using string
Base58GMP.encode 12345, 'bitcoin'               # => 4fr
Base58GMP.encode 12345, 'gmp'                   # => 3cn

# Decode Base58 as GMP::Z Integer
Base58GMP.decode '4ER'                          # => 12345

# Decode Base58 as GMP::Z Integer using alternate alphabets
Base58GMP.decode '4fr', :bitcoin                # => 12345
Base58GMP.decode '3cn', :gmp                    # => 12345

# MD5 Base58 Digest
Base58GMP.md5 'foo@bar.com'                     # => w6fdCRXnUXyz7EtDn5TgN9

# MD5 Base58 Digest with left padding for consistent length
Base58GMP.md5 'foo@bar.com', :flickr, pad: true # => w6fdCRXnUXyz7EtDn5TgN9

# Convert between alphabets
Base58GMP.from_to '123456789abcdefghijk', :flickr, :gmp # => 0123456789ABCDEFGHIJ
Base58GMP.from_to '0123456789ABCDEFGHIJ', :gmp, :flickr # => 123456789abcdefghijk
```

## Notes

### Base58 Implementations - Flickr, Bitcoin and GMP

This class supports the Base58 alphabets used by Flickr, Bitcoin and GMP. The Flickr alphabet is the default and used when no alphabet is provided.

| Alphabet | Character Set |
|----------|---------------|
| Flickr   | `[0-9a-zA-Z]` excluding `[0OIl]` |
| Bitcoin  | `[0-9A-Za-z]` excluding `[0OIl]` |
| Ripple   | `rpshnaf39wBUDNEGHJKLM4PQRST7VWXYZ2bcdeCg65jkm8oFqi1tuvAxyz` |
| GMP      | `[0-9A-Za-v]` |

The encode, decode and md5 methods support an alphabet parameter which can be set to the supported alphabets `['bitcoin', 'flickr', 'gmp']` to indicate the value to be encoded or decoded.

### GMP

This class requires GMP 4.2.0 or above. Prior versions are limited to Base36.

## Supported Ruby Versions

This library supports and is [tested against](https://travis-ci.org/grokify/ringcentral-sdk-ruby) the following Ruby implementations:

1. Ruby 2.3.0
2. Ruby 2.2.0
3. Ruby 2.1.0
4. Ruby 2.0.0

### Change Log

See [CHANGELOG.md](CHANGELOG.md)

## Links

Project Repo

* https://github.com/grokify/base58-gmp-ruby

Flickr post introducing Base58:

* http://www.flickr.com/groups/api/discuss/72157616713786392/

Bitcoin wiki Base58 article:

* https://en.bitcoin.it/wiki/Base58Check_encoding

GMP:

* https://gmplib.org/

## Credits

John Wang - http://johnwang.com

Some test examples courtesy Fraser Speirs' Base58Encoder Objective-C class, http://gist.github.com/101674.

## Contributing

1. Fork it (http://github.com/grokify/base58-gmp-ruby/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Base58 GMP Ruby is available under an MIT-style license. See [LICENSE.txt](LICENSE.txt) for details.

Base58 GMP Ruby &copy; 2011-2016 by John Wang

 [gem-version-svg]: https://badge.fury.io/rb/base58_gmp.svg
 [gem-version-link]: http://badge.fury.io/rb/base58_gmp
 [downloads-svg]: http://ruby-gem-downloads-badge.herokuapp.com/base58_gmp
 [downloads-link]: https://rubygems.org/gems/base58_gmp
 [build-status-svg]: https://api.travis-ci.org/grokify/base58-gmp-ruby.svg?branch=master
 [build-status-link]: https://travis-ci.org/grokify/base58-gmp-ruby
 [codacy-svg]: https://api.codacy.com/project/badge/Grade/fee7ec078e5b428190c347d54b609c1a
 [codacy-link]: https://www.codacy.com/app/grokify/base58-gmp-ruby
 [coverage-status-svg]: https://coveralls.io/repos/grokify/base58-gmp-ruby/badge.svg?branch=master
 [coverage-status-link]: https://coveralls.io/r/grokify/base58-gmp-ruby?branch=master
 [dependency-status-svg]: https://gemnasium.com/grokify/base58-gmp-ruby.svg
 [dependency-status-link]: https://gemnasium.com/grokify/base58-gmp-ruby
 [codeclimate-status-svg]: https://codeclimate.com/github/grokify/base58-gmp-ruby/badges/gpa.svg
 [codeclimate-status-link]: https://codeclimate.com/github/grokify/base58-gmp-ruby
 [scrutinizer-status-svg]: https://scrutinizer-ci.com/g/grokify/base58-gmp-ruby/badges/quality-score.png?b=master
 [scrutinizer-status-link]: https://scrutinizer-ci.com/g/grokify/base58-gmp-ruby/?branch=master
 [story-status-svg]: https://badge.waffle.io/grokify/base58-gmp-ruby.svg?label=ready&title=Ready
 [story-status-link]: https://waffle.io/grokify/base58-gmp-ruby
 [docs-rubydoc-svg]: https://img.shields.io/badge/docs-rubydoc-blue.svg
 [docs-rubydoc-link]: http://www.rubydoc.info/gems/base58_gmp/
 [license-svg]: https://img.shields.io/badge/license-MIT-blue.svg
 [license-link]: https://github.com/grokify/base58-gmp-ruby/blob/master/LICENSE.txt
