# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspreadsheet/version'

Gem::Specification.new do |spec|
  spec.name          = "rspreadsheet"
  spec.version       = Rspreadsheet::VERSION
  spec.authors       = ["Jakub A.Těšínský"]
  spec.email         = ["jAkub.cz (A is at)"]
  spec.summary       = %q{Manipulating spreadsheets with Ruby (read / create / modify OpenDocument Spreadsheet).}
  spec.description   = %q{Manipulating spreadsheets with Ruby (read / create / modify OpenDocument Spreadsheet).}
  spec.homepage      = "https://github.com/gorn/rspreadsheet"
  spec.license       = "GPL"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  # runtime dependencies
  spec.add_runtime_dependency 'libxml-ruby', '~>2.7'   # parsing XML files
  spec.add_runtime_dependency 'rubyzip', '~>1.1'       # opening zip files
  spec.add_runtime_dependency 'andand', '~>1.3'
  
  
  # development dependencies
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", '~>0.9'
  # testig - see http://bit.ly/1n5yM51
  spec.add_development_dependency "rspec", '~>2'
  
  # optional and testing
  spec.add_development_dependency "coveralls", '~>0.7'
  spec.add_development_dependency "test_notifier", '~>2.0' # test notifier for kde and other platforms
  spec.add_development_dependency "guard", '~>2.6'
  spec.add_development_dependency "guard-rspec", '~>2.6'
  
end