# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "midi_relay/version"

Gem::Specification.new do |spec|
  spec.name          = "midi_relay"
  spec.version       = MidiRelay::VERSION
  spec.authors       = ["Helmut Hissen"]
  spec.email         = ["helmut@zeebar.com"]

  spec.summary       = %q{relays MIDI signals to another location}
  spec.description   = %q{relays MIDI signals to another location}
  spec.homepage      = "http://github.com/zeebar/midi_relay"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "daemons"
  spec.add_development_dependency "midilib"
  spec.add_development_dependency "unimidi"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

end

