class SendRsvp < ActionMailer::Base
  def rsvp_confirmation(answer)
    @answer = answer
    mail(:to => "vanelli.feitoza@gmail.com", :subject => "RSVP", :from => answer.email)  
  end  
end
