# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ejs/version"

Gem::Specification.new do |s|
  s.name = "ejs"
  s.version = EJS::VERSION
  s.summary = "EJS (Embedded JavaScript) template compiler"
  s.description = "Compile and evaluate EJS (Embedded JavaScript) templates from Ruby."

  s.files = Dir["README.md", "LICENSE", "lib/**/*.rb","lib/**/*.js"]

  s.add_runtime_dependency "execjs", ">= 1.2.9"
  s.add_runtime_dependency "tilt"
  s.add_runtime_dependency "sprockets", ">= 2.0.3"

  s.authors = ["Sam Stephenson"]
  s.email = ["sstephenson@gmail.com"]
  s.homepage = "https://github.com/sstephenson/ruby-ejs/"
end
