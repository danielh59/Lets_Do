ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

#Only the first line was present in this fily. Why does bundler/setup all of sudden fix problem.
require "bundler/setup" # Set up gems listed in the Gemfile.
