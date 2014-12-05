Gem::Specification.new do |s|
  s.name = 'chef-handler-consul-release'
  s.version = '0.1'
  s.platform = Gem::Platform::RUBY
  s.summary = "Chef report handler to release a given consul lock"
  s.description = s.summary
  s.author = "Christopher Roy"
  s.email = "chris@moodlerooms.com"
  s.homepage = "https://github.com/mrcroy/chef-handler-consul-release"
  s.require_path = 'lib'
  s.files = %w(LICENSE README.md) + Dir.glob("lib/**/*")
end