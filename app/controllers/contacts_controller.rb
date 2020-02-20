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
    @contact.status = "Pending"
    if @contact.save
      # @contact.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.update(contact_params)
    redirect_to contacts_index_path
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to contacts_index_path
  end

  private

  def contact_params
    params.require(:contact).permit(:nom, :prenom, :phone, :email, :service, :additional_info, :status)
  end
end
