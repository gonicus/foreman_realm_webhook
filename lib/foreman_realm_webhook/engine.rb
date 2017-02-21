require 'deface'

module ForemanRealmWebhook
  class Engine < ::Rails::Engine
    engine_name 'foreman_realm_webhook'

    config.autoload_paths += Dir["#{config.root}/app/models/concerns/foreman_realm_webhook"]

    initializer 'foreman_realm_webhook.register_plugin', :before => :finisher_hook do |_app|
      Foreman::Plugin.register :foreman_realm_webhook do
        requires_foreman '>= 1.4'
      end
    end

    config.to_prepare do
      begin
        Realm.send :include, ForemanRealmWebhook::RealmExtensions
      rescue => e
        Rails.logger.warn "ForemanRealmWebhook: skipping engine hook (#{e})"
      end
    end
  end
end
