Laroriket.controller do
  get(:index)   { render "pages/index" }
  get(:about)   { render "pages/about" }
  get(:links)   { render "pages/links" }
  get(:courses) { render "pages/courses" }
  get(:contact) { render "pages/contact" }
  get(:suomeksi){ render "pages/suomeksi" }
  get('/contact/sent') { render "pages/sent_mail" }
  get('/contact/error') { render "pages/send_error"}

  post 'contact/send' do
    if(params[:name] == "" || params[:email] == "" || params[:body] == "")
      redirect "/contact/error"
    else
      deliver(:contact_mailer, :contact_mail, params[:name], params[:email], params[:body])
      redirect "/contact/sent"
    end
  end
end