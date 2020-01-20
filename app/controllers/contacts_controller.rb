class ContactsController < ApplicationController
  def index           # GET /contacts/new
    @contacts = Contact.all
  end

  def new           # GET /contacts/new
    @contact = Contact.new
  end

  def create        # POST /contacts
    @contact = Contact.new(contact_params)
    @contact.save
    render :new
    # if @contact.save
    #   ContactMailer.with(contact: @contact).contact_email.deliver_now
    # else
    #   render :new
    # end
    # respond_to do |format|
    #   # Tell the ContactMailer to send a "thank you" email after save - only if the contact form is correctly filled in
    #     format.html { redirect_to(@contact, notice: 'Demande de contacte correctement soumise.') }
    #     format.json { render json: @contact, status: :created, location: @contact }
    #   else
    #     format.html { render action: 'new' }
    #     format.json { render json: @contact.errors, notice: 'Erreur, merci de rééssayer', status: :unprocessable_entity }
    #   end
    # end
    # redirect_to root_path
  end

  private

  def contact_params
    params.require(:contact).permit(:nom, :prenom, :phone, :email, :service, :additional_info)
  end
end
