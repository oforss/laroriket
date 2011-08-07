# coding: utf-8

Laroriket.mailer :contact_mailer do
  email :contact_mail do |name, email, body|
    from    "gerd.forss@brev.fi"
    to      "ottoforss@gmail.com"
    subject "Läroriket kontaktmail från #{name}"
    locals  :name => name, :body => body, :email => email
    render  "contact/contact_mail.haml"
  end
end