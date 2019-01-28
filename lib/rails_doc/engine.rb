require 'rails_com'

module RailsDoc
  class Engine < ::Rails::Engine

    config.generators do |g|
      g.rails = {
        assets: false,
        stylesheets: false,
        helper: false
      }
      g.test_unit = {
        fixture: true,
        fixture_replacement: :factory_bot
      }
      g.templates.unshift File.expand_path('lib/templates', RailsCom::Engine.root)
    end

    initializer 'rails_doc.assets.precompile' do |app|
      app.config.assets.precompile += ['rails_doc_manifest.js']
    end

  end
end
