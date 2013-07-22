require 'bundler'
Bundler::GemHelper.install_tasks

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

task :test => :spec
task :default => :spec

require 'yard'
YARD::Rake::YardocTask.new

namespace :twitter do
  desc 'Stick Twitter in a Nunemaker namespace'
  task :namespace do
    ROOT = File.dirname(__FILE__) + '/'

    def append_to_file(path, text)
      path = ROOT + path
      lines = File.readlines(path)
      lines.unshift(text)
      File.open(path, 'w') { |io| io.write(lines.join("\n")) }
    end

    File.open(ROOT + 'lib/nunemaker.rb', 'w') do |io|
      io.puts "module Nunemaker\nend"
    end

    files = Dir[ROOT + '{lib,spec}/**/*.rb']
    fixtures = Dir[ROOT + 'spec/fixtures/**/*.json']
    gemspec = ROOT + 'twitter.gemspec'

    (files + fixtures + [gemspec]).each do |path|
      contents = File.read(path)
      # `sed -i '' -e 's/Twitter/Nunemaker::Twitter/g' #{path}`
      if contents.gsub!(/\b(?<!Nunemaker::)Twitter\b/, 'Nunemaker::Twitter')
        File.open(path, 'w') { |io| io.write contents }
      end
    end

    append_to_file('lib/twitter.rb', "require 'nunemaker'")
    append_to_file('lib/twitter/version.rb',
                   "require File.expand_path('../../nunemaker', __FILE__)")

    system 'rake'
  end
end
