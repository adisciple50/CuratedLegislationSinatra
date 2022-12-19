# config.ru
# require 'opal'
# require 'opal-sprockets'
# require 'sinatra'
require_relative 'main'
require 'bundler'

Bundler.require
run CuratedLegislation