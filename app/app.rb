# coding: utf-8

require 'rack'

class Laroriket < Padrino::Application
  register Padrino::Rendering
  register Padrino::Helpers

  enable :sessions
  I18n.locale = :sv
end