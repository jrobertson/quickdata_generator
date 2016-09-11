Gem::Specification.new do |s|
  s.name = 'quickdata_generator'
  s.version = '0.1.0'
  s.summary = 'Generates data from a simple-config format.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/quickdata_generator.rb']
  s.add_runtime_dependency('simple-config', '~> 0.6', '>=0.6.1')
  s.signing_key = '../privatekeys/quickdata_generator.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/quickdata_generator'
end
