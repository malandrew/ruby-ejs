module EJS
  class Engine < ::Rails::Engine
    initializer "sprockets.ejs", :after => "sprockets.environment", :group => :all do |app|
      next unless app.assets
      app.assets.register_engine('.ejs', TiltEJS)
    end
  end
end