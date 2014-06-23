require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

require './lib/deep_struct'
 
Settings = DeepStruct.new(YAML.load_file("./config/settings.yml"))

module Releasr
  class Application < Rails::Application
    config.assets.paths << Rails.root.join('vendor', 'assets', 'components')
    config.autoload_paths += %W(#{config.root}/lib)
    config.assets.precompile += ['administration.js', 'administration.css', 'modernizr/modernizr.js']

    config.generators do |g|
        g.test_framework :rspec,
            fixtures: true,
            view_specs: false,
            helper_specs: false,
            routing_specs: false,
            controller_specs: true,
            request_specs: false
        g.fixture_replacement :factory_girl, dir: "spec/factories"
    end
  end
end
