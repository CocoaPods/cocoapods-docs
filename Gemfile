source 'http://rubygems.org'

gemspec

group :development do
  gem 'cocoapods',      :git => "https://github.com/CocoaPods/CocoaPods.git", :branch => 'master'
  gem 'cocoapods-core', :git => "https://github.com/CocoaPods/Core.git", :branch => 'master'
  gem 'claide',         :git => 'https://github.com/CocoaPods/CLAide.git', :branch => 'master'

  gem 'bacon'
  gem 'mocha'
  gem 'mocha-on-bacon'
  gem 'prettybacon'
  gem 'vcr'
  gem 'webmock'

  if RUBY_VERSION >= '1.9.3'
    gem 'codeclimate-test-reporter', :require => nil
    gem 'rubocop'
  end
end

group :debugging do
  gem 'awesome_print'
  gem 'kicker'
  gem 'pry'
  gem 'rb-fsevent'
end

group :ruby_1_8_7 do
  gem 'activesupport', '< 4'
  gem 'mime-types', '< 2.0'
end
