class BandsController < ApplicationController
  def new

  end

  def create
    @band = Band.create(name: params[:name])
    redirect_to bands_path
  end

  def index
    @bands = Band.all
  end

  def show
    @band = Band.find(params[:id])
  end
end