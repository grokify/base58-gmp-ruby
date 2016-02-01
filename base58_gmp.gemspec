Gem::Specification.new do |s|
  s.name        = 'base58_gmp'
  s.version     = '0.0.7'
  s.date        = '2011-11-21'
  s.summary     = 'High speed Base58 encoding using GMP with MD5 support'
  s.description = 'High speed Base58 encoding using GMP with MD5 support and transcoding between Flickr, Bitcoin and GMP alphabets.'
  s.authors     = ['John Wang']
  s.email       = 'johncwang@gmail.com'
  s.homepage    =
    'http://rubygems.org/gems/base58_gmp'
  s.extra_rdoc_files = [
    'README.rdoc'
  ]
  s.files = [
     'CHANGELOG',
     'MIT-LICENSE',
     'README.rdoc',
     'Rakefile',
     'VERSION',
     'base58_gmp.gemspec',
     'lib/base58_gmp.rb',
     'test/test_base58_gmp.rb',
     'test/test_encode-decode-multi.rb',
     'test/test_alphabets.rb'
  ]

end
