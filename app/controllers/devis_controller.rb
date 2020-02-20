class DevisController < ApplicationController
  before_action :authenticate_user!, only: [:index, :edit, :update, :destroy, :show]

  def index
    @devis = Devi.all
  end

  def new        # GET /devis/new
    @devi = Devi.new
  end

  def create     # POST /devis
    @devi = Devi.new(devi_params)
    @devi.status = "Pending"
    if @devi.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @devi = Devi.find(params[:id])
  end

  def edit
    @devi = Devi.find(params[:id])
  end

  def update
    @devi = Devi.find(params[:id])
    @devi.update(devi_params)
    redirect_to devis_index_path
  end

  def destroy
    @devi = Devi.find(params[:id])
    @devi.destroy
    redirect_to devis_index_path
  end

  private

  def devi_params
    params.require(:devi).permit(:first_name, :last_name, :telephone, :email, :building_address, :nr_de_passages, :nr_d_heures, :cahier_de_charges, :service_demande, :date_rdv, :date_debut_souhaitee, :status)
  end
end
