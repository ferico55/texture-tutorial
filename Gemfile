source 'https://rubygems.org'

gem "cocoapods", "1.3.1"
gem "cocoapods-static-frameworks"
gem "cocoapods-transitive-dependencies", :path => 'cocoapods-plugins/cocoapods-transitive-dependencies'

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)
