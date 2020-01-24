class DeviMailer < ApplicationMailer

  def devi_email
    @devi = params[:devi]
    receiver = params[:devi][:email]
    # @url  = 'http://example.com/login'
    mail(to: receiver, bcc: 'laurent.vanesse@gmail.com', subject: 'Merci pour votre demande')

  end
end
