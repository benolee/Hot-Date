Gem::Specification.new do |s|
  s.name    = 'hot_date'
  s.version = '0.0.1'
  s.summary = 'Adds all kinds of date methods'

  s.author   = 'Adam Gamble'
  s.email    = 'adamgamble@gmail.com'
  s.homepage = 'https://github.com/adamgamble/hot_date'

  # Include everything in the lib folder
  s.files = Dir['lib/**/*']

  # Supress the warning about no rubyforge project
  s.rubyforge_project = 'nowarning'
end
