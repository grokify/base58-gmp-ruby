lib = 'base58_gmp'
lib_file = File.expand_path("../lib/#{lib}.rb", __FILE__)
File.read(lib_file) =~ /\bVERSION\s*=\s*["'](.+?)["']/
version = $1

Gem::Specification.new do |s|
  s.name        = 'base58_gmp'
  s.version     = version
  s.date        = '2016-01-31'
  s.summary     = 'High speed Base58 encoding using GMP with MD5 support'
  s.description = 'High speed Base58 encoding using GMP with MD5 support and transcoding between Flickr, Bitcoin and GMP alphabets.'
  s.authors     = ['John Wang']
  s.email       = 'johncwang@gmail.com'
  s.homepage    = 'https://github.com/grokify/'
  s.licenses    = ['MIT']
  s.files = [
     'CHANGELOG.md',
     'LICENSE.txt',
     'README.md',
     'lib/base58_gmp.rb'
  ]
  s.add_dependency 'gmp', '~> 0', '>= 0'
end
