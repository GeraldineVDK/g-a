class ContactsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :edit, :update, :destroy]

  def index           # GET /contacts/new
    @contacts = Contact.all
  end

  def new           # GET /contacts/new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    # respond_to do |format|
      if @contact.save
        # Tell the UserMailer to send a welcome email after save
        ContactMailer.with(contact: @contact).contact_email.deliver_now
        # format.html { redirect_to contacts_path(@contact), notice: 'Demande envoyée.' }
        # format.json { render json: @contact, status: :created, location: @contact }
      else
        render :new
      end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
  end

  private

  def contact_params
    params.require(:contact).permit(:nom, :prenom, :phone, :email, :service, :additional_info)
  end
end
