class NewMailer < Devise::Mailer   
	helper :application # gives access to all helpers defined within `application_helper`.
	include Devise::Controllers::UrlHelpers # Optional. eg. `confirmation_url`
	def confirmation_instructions(record, token, opts={})
		headers["Custom-header"] = "Bar"
		
		super
	end 
end
