class Blogmailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.blogmailer.register.subject
  #
def register(user) 
   @user = user 
    mail(:to => user.email, :subject => "Welcome to Dalal's Water Sports Site") 
 end

end
