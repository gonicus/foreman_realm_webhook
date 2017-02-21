# -*- encoding: utf-8 -*-

require File.expand_path('../lib/foreman_realm_webhook/version', __FILE__)
require 'date'

Gem::Specification.new do |s|
  s.name        = 'foreman_realm_webhook'
  s.version     = ForemanWebhook::VERSION
  s.date        = Date.today.to_s
  s.license     = "GPL-3.0"
  s.authors     = ['Joshua Mühlfort']
  s.email       = ['muehlfort@gonicus.de']
  s.homepage    = 'https://github.com/gonicus/foreman_realm_webhook'
  s.summary     = 'Webhook realm for Foreman'
  s.description = 'Just extends the list of available types of realms with "Webhook"'
  s.files       = Dir['{app,lib}/**/*'] + ['LICENSE', 'README.md']
  s.test_files  = Dir['test/**/*']
end
