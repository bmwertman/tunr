class BandsController < ApplicationController
  def new
    @band = Band.new
  end

  def create
    @band = Band.create(name: params[:band][:name])
    redirect_to bands_path
  end

  def index
    @bands = Band.all
  end

  def show
    @band = Band.find(params[:id])
  end


end