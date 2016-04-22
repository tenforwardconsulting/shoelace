module Shoelace
  module Rails
    class Engine < ::Rails::Engine
      initializer 'shoelace.engine', :group => :all do |app|
        app.config.assets.paths << root.join('assets', 'stylesheets')
      end
    end
  end
end
