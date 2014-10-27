stuff here

chef-julia
==========
[![Built on Travis](https://secure.travis-ci.org/stensonb/chef-julia.png?branch=master)](http://travis-ci.org/stensonb/chef-julia)

chef-julia builds cookbooks used for testing Chef (https://github.com/opscode/chef) solutions.

When writing LWRPs, testing them can be difficult.  For example, in ChefSpec, you must build a "fixture cookbook", then duplicate the details of your fixture cookbook in your ChefSpec (ie, expecting your resource to be called by the fixture cookbook with certain attribute values).

The idea here is that you use chef-julia to build your cookbook and recipes dynamically, and then use the same inputs in your ChefSpec...and we all get DRY.

# How to use

## Install it

```bash
gem install chef-julia
```

## Call it

```ruby
details = {}
details[:name] = 'joy'
details[:recipes] = [{name: 'nginx-souffle', details: 'file "/tmp/chef-julia-was-here" do; end'}]
cb = ChefJulia::Cookbook.new(details)
````

Now, you've got a cookbook ready for use in your ChefSpec.

## Roadmap

- provide options for persisting the cookbook (always delete, never delete, only delete on failure, etc)

# How to contribute

Just like every other project on github. :)
