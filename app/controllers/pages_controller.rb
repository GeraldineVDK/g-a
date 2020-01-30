class PagesController < ApplicationController
  before_action :authenticate_user!, only: :dashboard
  def contact
  end

  def about
  end

  def services
  end

  def home
  end

  def dashboard
  end
end
