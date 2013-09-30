Gem::Specification.new do |s|
  s.name = "bk201"
  s.version = "0.0.3"
  s.author = "NS, FX"
  s.homepage = "http://wiki.github.com/LuiKore/bk201"
  s.platform = Gem::Platform::RUBY
  s.summary = "In-memory binary code compiler, quite speedy and hacky."
  s.required_ruby_version = ">=1.9.0"

  # this line is generated by rake bk201.gemspec
  files = ["lib/bk201/mov_x_y.rb","lib/bk201.rb","lib/ext/extconf.rb","lib/ext/bk201_ext.c"]
  s.files = %w[README.rdoc lib lib/ext] + files
  s.extensions = ["lib/ext/extconf.rb"]
  s.require_paths = ["lib"]
  s.rubygems_version = '1.3.2'
  #s.has_rdoc = true
  s.extra_rdoc_files = ["README.rdoc"]
end


