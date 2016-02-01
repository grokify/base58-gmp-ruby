lib = 'base58_gmp'
lib_file = File.expand_path("../lib/#{lib}.rb", __FILE__)
File.read(lib_file) =~ /\bVERSION\s*=\s*["'](.+?)["']/
version = $1

Gem::Specification.new do |s|
  s.name        = 'base58_gmp'
  s.version     = version
  s.date        = '2011-11-21'
  s.summary     = 'High speed Base58 encoding using GMP with MD5 support'
  s.description = 'High speed Base58 encoding using GMP with MD5 support and transcoding between Flickr, Bitcoin and GMP alphabets.'
  s.authors     = ['John Wang']
  s.email       = 'johncwang@gmail.com'
  s.homepage    = 'https://github.com/grokify/'
  s.licenses    = ['MIT']
  s.files       = Dir['lib/**/**/*'] # + Dir['bin/*']
  s.files      += Dir['[A-Z]*'] + Dir['test/**/*']
  # s.files.reject! { |fn| fn.include? "CVS" }
  # s.required_ruby_version = '>= 1.8.7' # 1.8.7+ is tested
  s.add_dependency 'gmp', '~> 0', '>= 0'
end
