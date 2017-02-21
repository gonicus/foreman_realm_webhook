# ForemanRealmWebhook

Adds "Webhook" to the list of known realm types in Foreman

## Installation

See [How_to_Install_a_Plugin](http://projects.theforeman.org/projects/foreman/wiki/How_to_Install_a_Plugin)
for how to install Foreman plugins

## Usage

Use the "Webhook" type for your realm.

The selection in Foreman itself has no impact on the request to the smart proxy currently,
but the the provisioning templates may check for the realm type and add specific content.

This package does not offer any actual functionality - for actual functionality
use a smart proxy where `smart_proxy_realm_webhook` is installed additionally.

## Note

The way this package works is to update the constant list TYPES (in Realm) which is a workaround.

## Contributing

Fork and send a Pull Request. Thanks!

## Copyright

Copyright (c) 2017 GONICUS GmbH

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

