Gem::Specification.new do |s|
  s.name = "bk201"
  s.version = "0.0.1"
  s.author = "night_stalker"
  s.email = "usurffx@gmail.com"
  s.homepage = "http://wiki.github.com/LuiKore/bk201"
  s.platform = Gem::Platform::RUBY
  s.summary = "In-memory binary code compiler, extreme speedy and hacky."
  s.required_ruby_version = ">=1.9.0"

  files = ["lib/bk201/mov_x_y.rb","lib/bk201.rb","lib/ext/bk201_ext.c","lib/ext/extconf.rb"]
  s.files = %w[README.rdoc lib lib/ext] + files
  s.require_paths = ["lib"]
  s.rubygems_version = '1.3.2'
  #s.has_rdoc = true
  s.extra_rdoc_files = ["README.rdoc"]
end

