class MyMailer < ApplicationMailer

def send_email_contact(name, email, message)
@name = name
@email = email
@message = message

mail(from: email, subject: 'Contact', to: "reggiest09@gmail.com")

end
end




