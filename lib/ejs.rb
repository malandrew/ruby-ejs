require "ejs/version"

module EJS
  autoload(:EJS, 'ejs/ejs')
  autoload(:TiltEJS, 'ejs/tilt_ejs')
  
  if defined?(Rails)
    require 'ejs/engine'
  else
    require 'sprockets'
    Sprockets.register_engine '.ejs', TiltEJS
  end
end