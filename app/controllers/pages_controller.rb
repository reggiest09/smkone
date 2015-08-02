class PagesController < ApplicationController
  def land
  end


 def contact
name = params[:name]
 email = params[:email]
 message = params[:message]
# mailer send email to admin
 MyMailer.send_email_contact(name, email, message).deliver_now
 redirect_to root_path
 end


def subscribe
		@list_id = ENV['MAILCHIMP_LIST_ID']
	gb = Gibbon::API.new
	gb.lists.subscribe({
    id: @list_id,
    email: {email: params[:sub_email]}


		})

redirect_to root_path
	
end


end
