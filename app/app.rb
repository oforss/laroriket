# coding: utf-8

class Laroriket < Padrino::Application
  register Padrino::Rendering
  register Padrino::Mailer
  register Padrino::Helpers

  enable :sessions


  configure :development do
    set :delivery_method, :smtp => { 
      :address        => "smtp.ktnet.fi",
      :port           => 25,
      :user_name      => "mikaelf",
      :password       => "mikfor",
      :enable_starttls_auto => true
    }
  end

  #  set :delivery_method, :smtp => {
  #    :address        => "smtp.sendgrid.net",
  #    :port           => "25",
  #    :authentication => :plain,
  #    :user_name      => ENV['SENDGRID_USERNAME'],
  #    :password       => ENV['SENDGRID_PASSWORD'],
  #    :domain         => ENV['SENDGRID_DOMAIN']
  #  }
end