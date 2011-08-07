# coding: utf-8

class Laroriket < Padrino::Application
  register Padrino::Rendering
  register Padrino::Mailer
  register Padrino::Helpers

  enable :sessions

  set :delivery_method, :smtp => { 
    :address        => "smtp.ktnet.fi",
    :port           => 25,
    :user_name      => "mikaelf",
    :password       => "mikfor",
    :enable_starttls_auto => true
  }
end