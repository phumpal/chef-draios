# chef-draios

## Description

Installs the [draios](http://draios.com/) monitoring agent
 
## Requirements

### Supported Platforms

The following platforms have been tested with this cookbook

* Ubuntu 12.04+
* CentOS 6.3+
 
## Recipes

* `draios` - Setup the yum or apt repository
* `draios::client` - Installs the agent
* `draios::remove` - Removes the agent

## Usage

This cookbook assumes you are using the [wrapper cookbook](http://devopsanywhere.blogspot.com/2012/11/how-to-write-reusable-chef-cookbooks.html) pattern, are adding the access_key attribute directly to the cookbook or overriding the attribute via a role.

Add your access_key via the attribute

````
default[:draios][:access_key] = 'YOUR_ACCESS_KEY_GOES_HERE
````

Include `recipe[draios::client]` in your run_list or recipe.

## License

Author: Patrick Humpal (patrick@netvilla.net)

License: Apache
