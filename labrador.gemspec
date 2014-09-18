Gem::Specification.new do |gem|
  gem.name    = 'labrador'
  gem.version = "0.0.1"

  gem.summary     = "Sniffs out labs and other research institutions bassed on emails and domains. Also a loyal companion."
  gem.description = ""

  gem.authors  = ['Ben Balter']
  gem.email    = 'ben.balter@github.com'
  gem.homepage = 'http://github.com/benbalter/naughty_or_nice'
  gem.license  = "MIT"

  gem.files = Dir['Rakefile', '{bin,lib}/**/*', 'README*', 'LICENSE*']

  gem.add_dependency( "naughty_or_nice", '~> 0.0.2')

  gem.add_development_dependency('pry', '~> 0.9')
  gem.add_development_dependency('shoulda', '~> 3.5')
  gem.add_development_dependency('rake', '~> 10.3')
  gem.add_development_dependency( "pry" )

end
