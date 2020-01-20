class DevisController < ApplicationController
  def index
    @devis = Devi.all
  end

  def new        # GET /devis/new
    @devi = Devi.new
  end

  def create     # POST /devis
    @devi = Devi.new(devi_params)
    if @devi.save
      DeviMailer.with(devi: @devi).devi_email.deliver_now
      flash[:alert] = "Upload successful!"
      # respond_to do |format|
      # # Tell the DeviMailer to send a "thank you" email after save - only if the devi form is correctly filled in
      #   DeviMailer.with(devi: @devi).devi_email.deliver_now
      #   # format.html { redirect_to devis_path, notice: 'Demande enregistrée.' }
      # end
    else
      # format.html { render action: 'new' }
      # flash[:alert] = "Upload issue, try again!"
      render :new
    end
  end

  private

  def devi_params
    params.require(:devi).permit(:first_name, :last_name, :telephone, :email, :building_address, :nr_de_passages, :nr_d_heures,:cahier_de_charges, :service_demande, :date_rdv, :date_debut_souhaitee)
  end
end
