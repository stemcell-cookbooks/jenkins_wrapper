jenkins wrapper cookbook
========================

Installs and configures Jenkins CI master, installs a set of jenkins plugins and installs and configures nginx proxy.
Has been tested with Ubuntu 12 and should work with 14.

Supported Platforms
-------------------

- Debian

Requirements
------------
- Chef 11 or higher
- **Ruby 1.9.3 or higher**

Local test (run)
---
#### Prerequisites
- [ChefDK](https://downloads.chef.io/chef-dk/)
- [Vagrant](https://www.vagrantup.com/downloads.html)
- [Virtualbox](https://www.virtualbox.org/wiki/downloads)

Chef Usage
---

Add `jenkins_wrapper::default` in your `run_list`.

```json
{
  "run_list": [
    "recipe[jenkins_wrapper::default]"
  ]
}
```

Berkshelf Usage
---
```
bundle install
berks install
```
This will install community cookbooks defined in the berksfile

Recipes that are wrapped into `jenkins_wrapper::default`
---
#### jenkins::master

- Install Jenkins from the official jenkins-ci.org packages

#### jenkins::java

- This very simple recipe installs OpenJDK 7 on the target system. If you need a more complex Java setup, you should use the community cookbook or write your own.

#### jenkins_wrapper::proxy

- Installs nginx proxy

#### jenkins_wrapper::plugins

- WIP

Roadmap
---
- script configurations for jenkins plugins (MUST)
- AWS compatibility (COULD)
- RHEL compatibility (COULD)
- Windows compatibility (COULD)

Unit testing
---
Unit testing coverage is still low; we use foodcritic and knife tests.

Credits
---
This project pulls community cookbooks from source https://supermarket.chef.io for [jenkins](https://github.com/opscode-cookbooks/jenkins.git), [apt](https://github.com/opscode-cookbooks/apt.git), [git](https://github.com/jssjr/git.git), [nginx](https://github.com/miketheman/nginx.git)

A big thanks to the community for providing these!

License and Author
---

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
