lib = 'base58_gmp'
lib_file = File.expand_path("../lib/#{lib}.rb", __FILE__)
File.read(lib_file) =~ /\bVERSION\s*=\s*["'](.+?)["']/
version = $1

Gem::Specification.new do |s|
  s.name        = 'base58_gmp'
  s.version     = version
  s.date        = '2016-09-24'
  s.summary     = 'High speed Base58 encoding using GMP with MD5 support'
  s.description = 'High speed Base58 encoding using GMP with MD5 support and transcoding between Flickr, Bitcoin and GMP alphabets.'
  s.authors     = ['John Wang']
  s.email       = 'johncwang@gmail.com'
  s.homepage    = 'https://github.com/grokify/'
  s.licenses    = ['MIT']
  s.files       = %w(CHANGELOG.md LICENSE.txt README.md base58_gmp.gemspec) + Dir['lib/**/*.rb']
  #if RUBY_VERSION < '2.1'
    s.add_dependency 'gmp', '~> 0', '>= 0'
  #end
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'test-unit'
end
