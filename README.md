Description
===========

A Chef Handler to release a consul lock created during a chef run


Usage
=====

Note this works with [chef 11.10](http://docs.opscode.com/release_notes.html#release-notes-chef-client-11-10-0)

```ruby
include_recipe 'chef_handler'

chef_gem "chef-handler-consul-release" do
  action :install
end

chef_handler 'Chef::Handler::ConsulRelease' do
  action :enable
  arguments [ 'HOST', 'KEY' , 'SESSION' ]
  source source 'chef/handler/consul_release'
end
```



See also: [Chef Handlers](http://docs.opscode.com/essentials_handlers.html) on the Chef Doc site.


Authors
============
1. [Christopher Roy](https://github.com/mrcroy)





Copyright
=========
Copyright 2014 Blackboard, Inc.


License
=======
Apache License 2.0