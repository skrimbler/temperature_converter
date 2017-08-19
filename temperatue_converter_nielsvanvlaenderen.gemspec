Gem::Specification.new do |s|
  s.name        = 'temperature_converter_nielsvanvlaenderen'
  s.version     = '1.0.0'
  s.date        = '2016-11-18'
  s.summary     = "Easy commands to convert temperatures"
  s.description = "commandline application to convert temperature"
  s.authors     = ["Niels Van Vlaenderen"]
  s.email       = 'skrimbler@hotmail.com'
  s.files       = Dir["lib/**/*.rb"]
  s.homepage    =
    'https://github.com/skrimbler/temperature_converter'
  s.license       = 'MIT'
  s.executables << 'temp-conv'
end
