class DevisController < ApplicationController
  # after_action :envoi_nouveau_devi, only: [:create]

  def index
    @devis = Devi.all
  end

  def new        # GET /devis/new
    @devi = Devi.new
  end

  def create     # POST /devis
    @devi = Devi.new(devi_params)

    respond_to do |format|
      if @devi.save
        # raise
        # Tell the UserMailer to send a welcome email after save
        DeviMailer.with(devi: @devi).devi_email.deliver_now
        format.html { redirect_to devis_path(@devi), notice: 'Demande envoyée.' }
        # raise
        format.json { render json: @devi, status: :created, location: @devi }
      else
        format.html { render action: 'new' }
        format.json { render json: @devi.errors, notice: 'Demande NON envoyée.', status: :unprocessable_entity }

      end
    end
  end

  private

  def devi_params
    params.require(:devi).permit(:first_name, :last_name, :telephone, :email, :building_address, :nr_de_passages, :nr_d_heures,:cahier_de_charges, :service_demande, :date_rdv, :date_debut_souhaitee)
  end

end
