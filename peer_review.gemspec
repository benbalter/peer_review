Gem::Specification.new do |gem|
  gem.name    = 'peer_review'
  gem.version = "0.0.3"

  gem.summary     = "Validates whether a given email, url, or domain belongs to a research institution.."
  gem.description = "Checks the suitability of your peers."

  gem.authors  = ['Ben Balter']
  gem.email    = 'ben.balter@github.com'
  gem.homepage = 'http://github.com/benbalter/peer_review'
  gem.license  = "MIT"

  gem.files = Dir['Rakefile', '{bin,lib,config}/**/*', 'README*', 'LICENSE*']

  gem.add_dependency( "naughty_or_nice", '~> 2.0')

  gem.add_development_dependency('pry', '~> 0.9')
  gem.add_development_dependency('shoulda', '~> 3.5')
  gem.add_development_dependency('rake', '~> 10.3')

end
