module ForemanRealmWebhook
  module RealmExtensions
    extend ActiveSupport::Concern

    included do
      old_types = Realm.const_get(:TYPES)
      types = old_types.clone
      types.push "Webhook"
      Realm.const_set(:TYPES, types)
      _validators[:realm_type].each do |v|
        if v.instance_variable_get(:@options) == {:in => old_types}
          v.instance_variable_set(:@options, {:in => types})
          v.instance_variable_set(:@delimiter, types)
        end
      end
    end
  end
end
