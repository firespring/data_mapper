#!/usr/bin/env ruby

require 'pathname'
require 'rubygems'
require 'rake'

gems = %w(
  dm-core
  dm-aggregates
  dm-constraints
  dm-migrations
  dm-transactions
  dm-serializer
  dm-timestamps
  dm-validations
  dm-types
)

AUTHOR           = 'Dan Kubb'.freeze
EMAIL            = 'dan.kubb@gmail.com'.freeze
GEM_NAME         = 'data_mapper'.freeze
GEM_VERSION      = '1.2.0'.freeze
GEM_DEPENDENCIES = gems.map { |gem_name| [gem_name, "~> #{GEM_VERSION}"] }
GEM_CLEAN        = %w(**/*.{gem,DS_Store} *.db doc/rdoc .config **/coverage cache).freeze
GEM_EXTRAS       = {has_rdoc: 'yard'}.freeze

PROJECT_NAME        = 'datamapper'.freeze
PROJECT_URL         = 'https://datamapper.org'.freeze
PROJECT_DESCRIPTION = 'Faster, Better, Simpler.'.freeze
PROJECT_SUMMARY     = 'An Object/Relational Mapper for Ruby'.freeze

WINDOWS = begin
  (RUBY_PLATFORM =~ /win32|mingw|bccwin|cygwin/)
rescue
  nil
end
SUDO = WINDOWS ? '' : ('sudo' unless ENV['SUDOLESS'])

desc "Install #{GEM_NAME}"
task install: :package do
  sh %(#{SUDO} gem install --local pkg/#{GEM_NAME}-#{GEM_VERSION})
end

task(:spec) {} # this gem does not provide any specs

## HOE TASKS

require 'hoe'

@config_file = '~/.rubyforge/user-config.yml'
@config = nil
RUBYFORGE_USERNAME = 'unknown'.freeze
def rubyforge_username
  unless @config
    begin
      @config = YAML.safe_load_file(File.expand_path(@config_file))
    rescue
      puts <<~EOS
        ERROR: No rubyforge config file found: #{@config_file}
        Run 'rubyforge setup' to prepare your env for access to Rubyforge
         - See http://newgem.rubyforge.org/rubyforge.html for more details
      EOS
      exit
    end
  end
  RUBYFORGE_USERNAME.replace @config['username']
end

Hoe.new(GEM_NAME, GEM_VERSION) do |p|
  p.developer(AUTHOR, EMAIL)

  p.description = PROJECT_DESCRIPTION
  p.summary = PROJECT_SUMMARY
  p.url = PROJECT_URL

  p.rubyforge_name = PROJECT_NAME if PROJECT_NAME

  p.clean_globs |= GEM_CLEAN
  p.spec_extras = GEM_EXTRAS if GEM_EXTRAS

  GEM_DEPENDENCIES.each do |dep|
    p.extra_deps << dep
  end
end
